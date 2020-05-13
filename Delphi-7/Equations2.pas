unit Equations2;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Math,
  DDSpinEdit,
  Unit1,Unit2,Stimulation;

var
    { Variables }
    t,U,w,K,Na,nu,xD,m,V,dVdt
                                                :double;
    { Parameters }
    dt,Cm,tau_w,gI_gE,tau_K,ro_pump,tau_xD,dxD_reset,tau_m,tau_Na,
    g_U,gE,gL,C,
    I_stim,I_a,k1,Gain,u0,uu,nu_max,
    UT,U_reset,dw_reset,dNa_reset,dK_reset,roK_roNa,
    U1,U2,V0, NoiseAmpl,INaKpump,
    Nai_alpha,Ko_alpha,VK,VK0,VKnorm,K_bath,K0,Na0,DB
                                                :double;
    nt,nt_end,n_Write,n_Draw
                                                :integer;
    aaa,bbb                                     :text;
    Stim                                        :TStim;


procedure Cleaning;
procedure PlotSigmoid;
procedure Integrate;
function dexp(x :double) :double;
function Sigmoid(x :double) :double;
function Sigmoid2(x :double) :double;
function Sigmoid3(x :double) :double;
function Theta(x :double) :double;
function step(a,b :double) :double;    { step = a**b }
function max(x,y:double):double;

implementation


function dexp(x :double) :double;
begin
  if      x<-20 then dexp:=0{exp(-20)}
  else if x> 20 then dexp:=exp( 20)
  else               dexp:=exp(x);
end;

function Sigmoid(x :double) :double;
begin    Sigmoid:=1/(1+dexp(-x))  end;

function Sigmoid2(x :double) :double;
begin    Sigmoid2:=2/(1+dexp(-2*x)) - 1;  end;

function Sigmoid3(x :double) :double;
begin
  if      x<0 then Sigmoid3:=0
  else if x<1 then Sigmoid3:=x
  else             Sigmoid3:=1;
end;

function Theta(x :double) :double;
begin if x>=0 then Theta:=1 else Theta:=0; end;

function step(a,b :double) :double;    { step = a**b }
begin
  step:=exp(b*ln(a));
end;

function max(x,y:double):double;
begin  if x>y then max:=x  else max:=y;  end;

procedure Parameters;
{ Basic parameters are from Izhikevich, p. 295 }
begin
  dt :=Form1.DDSpinEdit1.Value;
  Cm :=Form1.DDSpinEdit2.Value;
  g_U:=Form1.DDSpinEdit3.Value;
  n_Write:=trunc(Form1.DDSpinEdit4.Value);
  n_Draw :=trunc(Form1.DDSpinEdit19.Value);
  gE :=Form1.DDSpinEdit5.Value;
  I_a      :=Form1.DDSpinEdit7.Value;
  UT       :=Form1.DDSpinEdit8.Value;
  U_reset  :=Form1.DDSpinEdit9.Value;
  dw_reset :=Form1.DDSpinEdit10.Value;
  dK_reset :=Form1.DDSpinEdit14.Value;
  k1       :=Form1.DDSpinEdit15.Value;
  dNa_reset:=Form1.DDSpinEdit16.Value;
  tau_w  :=Form1.DDSpinEdit11.Value;
  gI_gE  :=Form1.DDSpinEdit12.Value;
  tau_K  :=Form1.DDSpinEdit13.Value;
  ro_pump:=Form1.DDSpinEdit17.Value;
  DB     :=Form1.DDSpinEdit20.Value;
  tau_xD :=Form1.DDSpinEdit21.Value;
  dxD_reset:=Form1.DDSpinEdit22.Value;
  Gain   :=Form1.DDSpinEdit23.Value;
  u0     :=Form1.DDSpinEdit24.Value;
  NoiseAmpl:=Form1.DDSpinEdit25.Value;
  tau_m  :=Form1.DDSpinEdit26.Value;
  tau_Na :=Form1.DDSpinEdit27.Value;
  roK_roNa:=Form1.DDSpinEdit28.Value;
  K0     :=Form1.DDSpinEdit29.Value;
  gL     :=Form1.DDSpinEdit30.Value;
  C      :=Form1.DDSpinEdit31.Value;
//  U1:=-5/2/g_U-sqrt(5/4/g_U/g_U-140/g_U);
//  U2:=-5/2/g_U+sqrt(25/4/g_U/g_U-140/g_U);
  U1:=-60; {mV}
  U2:=-40; {mV}
  V0:=-70; {mV}
  Nai_alpha:=20 {mM};
  Ko_alpha:=2.5 {mM};
  K_bath:=Form1.DDSpinEdit18.Value; // 8.5 {mM};
  nu_max:=100 {Hz};
end;

procedure InitialConditions;
begin
  U:=V0;
  w:=0;
  K:=K0;
  VK0   :=26.6{mV}*ln({K}K0/130{mM});
  VKnorm:=26.6{mV}*ln(3{mM}/130{mM});
  Na0:=10;
  Na:=Na0;
  m:=0;
  xD:=1;
  nu:=0;
  V:=0;      dVdt:=0;
  Stim:=TStim.Create;
  { Randomize }
  RandSeed:=2;
end;

procedure Cleaning;
begin
 { Cleaning }
  Form1.Series1.Clear;
  Form1.Series2.Clear;
  Form1.Series3.Clear;
  Form1.Series4.Clear;
  Form1.Series5.Clear;
  Form1.Series6.Clear;
  Form1.Series7.Clear;
  Form1.LineSeries1.Clear;
  Form1.LineSeries2.Clear;
  Form1.LineSeries3.Clear;
  Form1.LineSeries5.Clear;
  Form1.Series7.Active:=(tau_m>0);
  Form2.LineSeries6.Clear;
end;

procedure PlotSigmoid;
var i :integer;
begin
  assignFile(bbb,'Sigmoid.dat'); rewrite(bbb);
  Form1.LineSeries4.Clear;
  Parameters;
  for i:=0 to 150 do begin
      uu:=i;
      if Form1.CheckBox1.Checked then nu:=nu_max*max(Sigmoid3((uu-u0)/Gain),0)
                                 else nu:=nu_max*max(Sigmoid2((uu-u0)/Gain),0);
      Form1.LineSeries4.AddXY(uu,nu);
      writeln(bbb,uu:8:3,' ',nu:8:3);
  end;
  Application.ProcessMessages;
  close(bbb);
end;

procedure Writing;
begin
      { Writing }
      {           1             2         3                                    }
      write  (aaa,nt*dt:8:3,' ',U:8:3,' ',w:8:3,' ');
      {           4          5                          6                      }
      write  (aaa,U2:8:3,' ',INaKpump*1e3{mM/s}:8:3,' ',uu:8:3,' ');
      {           7           8          9                                     }
      write  (aaa,nu :8:3,' ',V :8:3,' ',K :8:3,' ');
      {           10          11          12                                   }
      write  (aaa,Na :8:3,' ',xD :8:3,' ',Stim.Current :8:3,' ');
      {           13                 14                                          }
      writeln(aaa,nt*dt/1000:8:3,' ',Stim.Rate :8:3);
end;

procedure Integrate;
var
    dUdt,dwdt,dKdt,dNadt,dxDdt,dmdt,I_ex,I_in,y
                                              :double;
begin
  Parameters;
  InitialConditions;
  Cleaning;
  PlotSigmoid;
  assignFile(aaa,'t_U_w_U2_pump_uu_nu_m_K_Na_xD.dat'); rewrite(aaa);
  nt:=0;
  repeat nt:=nt+1;  t:=nt*dt;
    Parameters;
    VK:=26.6{mV}*ln(K/130{mM});
    { Na-K pump, [Wei 2014] }
    INaKpump:=ro_pump/(1+dexp(3.5-K))/(1+dexp((25-Na)/3));    {M/s}
    { Stimulation }
    Stim.Stimulate(t,dt);
    I_stim  :=(VK-VKnorm)*k1 + NoiseAmpl/sqrt(dt)*randG(0,1) + Stim.Current; // sqrt is introduced on 26.09.2017
    I_ex:=       gE*m*xD;
    I_in:=-gI_gE*gE*m;  if I_stim+I_ex+I_in>DB then I_in:=0;
    { Total current }
    uu      :=I_stim + I_ex + I_in{gE*m*(xD-0.5)} - INaKpump;     // !!!  Na-K-pump is new since 22.05.2018
    { Izhikevich *************************************}
    dUdt :=1/Cm    *(g_U*(U-U1)*(U-U2) - w + uu + I_a);
    dwdt :=1/tau_w *(0-w);
    { Sigmoid ****************************************************************}
    y:=uu;
    if Form1.CheckBox3.Checked { with V-equation } then y:=V;
    if Form1.CheckBox1.Checked then  nu:=nu_max*    Sigmoid3((y-u0)/Gain)
                               else  nu:=nu_max*max(Sigmoid2((y-u0)/Gain),0);
    { Main eqs. **************************************************************}
    dKdt :=1/tau_K *(K_bath-K) - 2*roK_roNa*INaKpump + dK_reset *(nu{+Stim.Rate})/1000;
    dNadt:=1/tau_Na*(Na0-Na)   - 3*         INaKpump + dNa_reset*(nu+Stim.Rate)/1000;
    if tau_m=0 then m:=nu else
    dmdt :=1/tau_m *(nu-m);
    dxDdt:=1/tau_xD*(1-xD)                  - dxD_reset*nu*xD/1000;
    dVdt :=1/C*(-gL*V + uu);
    {*************************************************************************}
    U :=U +dt*dUdt;
    w :=w +dt*dwdt;
    K :=K +dt*dKdt;     K:=max(0,K);
    Na:=Na+dt*dNadt;
    m :=m +dt*dmdt;
    xD:=xD+dt*dxDdt;
    V :=V +dt*dVdt;
    {****************************************************************}
    { Drawing }
    if (U>=UT) then begin
       n_Write:=1;  n_Draw:=1;
    end;
    if nt mod n_Draw = 0 then begin
       Form1.Series1.AddXY(nt*dt,U);
       Form1.Series2.AddXY(nt*dt,w);
       Form1.Series3.AddXY(nt*dt,U2);
       Form1.Series4.AddXY(nt*dt,INaKpump);
       Form1.Series5.AddXY(nt*dt,uu);
       Form1.Series6.AddXY(nt*dt,nu);
       if tau_m>0 then
       Form1.Series7.AddXY(nt*dt,m);
       Form1.LineSeries1.AddXY(nt*dt,K);
       Form1.LineSeries2.AddXY(nt*dt,Na);
       Form1.LineSeries3.AddXY(nt*dt,xD);
       Form1.LineSeries5.AddXY(nt*dt,V);
       Form2.LineSeries6.AddXY(nt*dt,max(Stim.Current,Stim.Rate));
    end;
    if nt mod 1000*n_Draw = 0 then  Application.ProcessMessages;
    if (nt mod n_Write = 0) or (Stim.Status='Pulse') then  Writing;
    {****************************************************************}
    { Reset }
    if (U>=UT) then begin
       U :=U_reset;
       w :=w  + dw_reset;
    end;
    nt_end:=trunc(Form1.DDSpinEdit6.Value/dt);
  until nt>=nt_end;
  Application.ProcessMessages;
  closeFile(aaa);
end;

end.
