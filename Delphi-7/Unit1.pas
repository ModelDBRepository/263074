unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  DDSpinEdit, ComCtrls;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Button1: TButton;
    DDSpinEdit1: TDDSpinEdit;
    Label1: TLabel;
    DDSpinEdit6: TDDSpinEdit;
    Label6: TLabel;
    Series2: TLineSeries;
    Chart2: TChart;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    Series3: TLineSeries;
    Button2: TButton;
    DDSpinEdit19: TDDSpinEdit;
    Label19: TLabel;
    Series4: TLineSeries;
    Button3: TButton;
    Series5: TLineSeries;
    Chart3: TChart;
    LineSeries3: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Chart4: TChart;
    LineSeries4: TLineSeries;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DDSpinEdit4: TDDSpinEdit;
    Label4: TLabel;
    Button7: TButton;
    GroupBox1: TGroupBox;
    DDSpinEdit2: TDDSpinEdit;
    Label2: TLabel;
    DDSpinEdit11: TDDSpinEdit;
    Label11: TLabel;
    DDSpinEdit10: TDDSpinEdit;
    Label10: TLabel;
    Label3: TLabel;
    DDSpinEdit3: TDDSpinEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    DDSpinEdit29: TDDSpinEdit;
    DDSpinEdit18: TDDSpinEdit;
    DDSpinEdit13: TDDSpinEdit;
    DDSpinEdit14: TDDSpinEdit;
    GroupBox4: TGroupBox;
    DDSpinEdit17: TDDSpinEdit;
    Label16: TLabel;
    DDSpinEdit28: TDDSpinEdit;
    Label28: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    DDSpinEdit16: TDDSpinEdit;
    DDSpinEdit27: TDDSpinEdit;
    GroupBox5: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    DDSpinEdit21: TDDSpinEdit;
    DDSpinEdit22: TDDSpinEdit;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label12: TLabel;
    DDSpinEdit12: TDDSpinEdit;
    DDSpinEdit5: TDDSpinEdit;
    Label15: TLabel;
    DDSpinEdit15: TDDSpinEdit;
    Label20: TLabel;
    DDSpinEdit20: TDDSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    DDSpinEdit8: TDDSpinEdit;
    DDSpinEdit9: TDDSpinEdit;
    DDSpinEdit25: TDDSpinEdit;
    Label25: TLabel;
    Chart5: TChart;
    Button8: TButton;
    LineSeries5: TLineSeries;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    DDSpinEdit7: TDDSpinEdit;
    Label7: TLabel;
    GroupBox8: TGroupBox;
    DDSpinEdit30: TDDSpinEdit;
    Label30: TLabel;
    DDSpinEdit31: TDDSpinEdit;
    Label31: TLabel;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    DDSpinEdit26: TDDSpinEdit;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    DDSpinEdit23: TDDSpinEdit;
    DDSpinEdit24: TDDSpinEdit;
    GroupBox9: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button16: TButton;
    Button17: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DDSpinEdit6DblClick(Sender: TObject);
    procedure DDSpinEdit15DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DDSpinEdit25DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DDSpinEdit26DblClick(Sender: TObject);
    procedure DDSpinEdit14DblClick(Sender: TObject);
    procedure DDSpinEdit16DblClick(Sender: TObject);
    procedure DDSpinEdit17DblClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure DDSpinEdit22DblClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Equations2,Stimulation, Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Button1.Enabled:=false;
  Integrate;
  Form1.Button1.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.DDSpinEdit6.Value:=nt*dt;
end;

procedure TForm1.DDSpinEdit6DblClick(Sender: TObject);
begin
  Form1.DDSpinEdit6.Value:=100000; { t_end in ms }
end;

procedure TForm1.DDSpinEdit15DblClick(Sender: TObject);
begin
  Form1.DDSpinEdit15.Value:=0;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Cleaning;
end;

procedure TForm1.DDSpinEdit25DblClick(Sender: TObject);
begin
  Form1.DDSpinEdit25.Value:=0;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form1.Chart2.BottomAxis.Automatic:=Form1.Chart1.BottomAxis.Automatic;
  Form1.Chart3.BottomAxis.Automatic:=Form1.Chart1.BottomAxis.Automatic;
  Form1.Chart2.BottomAxis.Minimum:=Form1.Chart1.BottomAxis.Minimum;
  Form1.Chart2.BottomAxis.Maximum:=Form1.Chart1.BottomAxis.Maximum;
  Form1.Chart3.BottomAxis.Minimum:=Form1.Chart1.BottomAxis.Minimum;
  Form1.Chart3.BottomAxis.Maximum:=Form1.Chart1.BottomAxis.Maximum;
  Form1.Chart5.BottomAxis.Automatic:=Form1.Chart1.BottomAxis.Automatic;
  Form1.Chart5.BottomAxis.Minimum:=Form1.Chart1.BottomAxis.Minimum;
  Form1.Chart5.BottomAxis.Maximum:=Form1.Chart1.BottomAxis.Maximum;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form1.Chart1.BottomAxis.Automatic:=Form1.Chart2.BottomAxis.Automatic;
  Form1.Chart3.BottomAxis.Automatic:=Form1.Chart2.BottomAxis.Automatic;
  Form1.Chart1.BottomAxis.Minimum:=Form1.Chart2.BottomAxis.Minimum;
  Form1.Chart1.BottomAxis.Maximum:=Form1.Chart2.BottomAxis.Maximum;
  Form1.Chart3.BottomAxis.Minimum:=Form1.Chart2.BottomAxis.Minimum;
  Form1.Chart3.BottomAxis.Maximum:=Form1.Chart2.BottomAxis.Maximum;
  Form1.Chart5.BottomAxis.Automatic:=Form1.Chart2.BottomAxis.Automatic;
  Form1.Chart5.BottomAxis.Minimum:=Form1.Chart2.BottomAxis.Minimum;
  Form1.Chart5.BottomAxis.Maximum:=Form1.Chart2.BottomAxis.Maximum;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Form1.Chart1.BottomAxis.Automatic:=Form1.Chart3.BottomAxis.Automatic;
  Form1.Chart2.BottomAxis.Automatic:=Form1.Chart3.BottomAxis.Automatic;
  Form1.Chart2.BottomAxis.Minimum:=Form1.Chart3.BottomAxis.Minimum;
  Form1.Chart2.BottomAxis.Maximum:=Form1.Chart3.BottomAxis.Maximum;
  Form1.Chart1.BottomAxis.Minimum:=Form1.Chart3.BottomAxis.Minimum;
  Form1.Chart1.BottomAxis.Maximum:=Form1.Chart3.BottomAxis.Maximum;
  Form1.Chart5.BottomAxis.Automatic:=Form1.Chart3.BottomAxis.Automatic;
  Form1.Chart5.BottomAxis.Minimum:=Form1.Chart3.BottomAxis.Minimum;
  Form1.Chart5.BottomAxis.Maximum:=Form1.Chart3.BottomAxis.Maximum;
  Form2.Chart6.BottomAxis.Automatic:=Form1.Chart3.BottomAxis.Automatic;
  Form2.Chart6.BottomAxis.Minimum:=Form1.Chart3.BottomAxis.Minimum;
  Form2.Chart6.BottomAxis.Maximum:=Form1.Chart3.BottomAxis.Maximum;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Form1.Chart1.BottomAxis.Automatic:=true;
  Form1.Chart2.BottomAxis.Automatic:=true;
  Form1.Chart3.BottomAxis.Automatic:=true;
  Form1.Chart5.BottomAxis.Automatic:=true;
  Form2.Chart6.BottomAxis.Automatic:=true;
end;

procedure TForm1.DDSpinEdit26DblClick(Sender: TObject);
begin
  Form1.DDSpinEdit26.Value:=0;
end;

procedure TForm1.DDSpinEdit14DblClick(Sender: TObject);
begin
  Form1.DDSpinEdit14.Value:=0;
end;

procedure TForm1.DDSpinEdit16DblClick(Sender: TObject);
begin
  Form1.DDSpinEdit16.Value:=0;
end;

procedure TForm1.DDSpinEdit17DblClick(Sender: TObject);
begin
  Form1.DDSpinEdit17.Value:=0;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if Stim<>nil then Stim.StartStimulation(t+dt);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  PlotSigmoid;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 Form1.Chart2.CopyToClipboardBitmap;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 Form1.Chart1.CopyToClipboardBitmap;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
 Form1.Chart3.CopyToClipboardBitmap;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
 if Form1.Chart5.Visible then
 Form1.Chart5.CopyToClipboardBitmap;
 if Form2.Chart6.Visible then
 Form2.Chart6.CopyToClipboardBitmap;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 Form1.Chart4.CopyToClipboardBitmap;
end;

procedure TForm1.DDSpinEdit22DblClick(Sender: TObject);
begin
  Form1.DDSpinEdit22.Value:=0;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if Form1.CheckBox2.Checked then begin
     Form1.DDSpinEdit26.Value:=0;
     Form1.DDSpinEdit14.Value:=0;
     Form1.DDSpinEdit17.Value:=0;
     Form1.DDSpinEdit24.Value:=24;
     Form1.DDSpinEdit25.Value:=5;
     Form1.DDSpinEdit18.Value:=3;
  end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if Form1.CheckBox3.Checked then begin
     Form1.DDSpinEdit24.Value:=24;
     Form1.DDSpinEdit25.Value:=35;
  end;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Form1.DDSpinEdit2.Value:=200; //Cm
  Form1.DDSpinEdit3.Value:=0.4; //g_U
  Form1.DDSpinEdit7.Value:=0;   //I_a
  Form1.DDSpinEdit8.Value:=25;  //UT
  Form1.DDSpinEdit9.Value:=-50; //U_reset
  Form1.DDSpinEdit10.Value:=0;  //dw_reset
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Form1.DDSpinEdit2.Value:=1000; //Cm
  Form1.DDSpinEdit3.Value:=1.5; //g_U
  Form1.DDSpinEdit7.Value:=116;   //I_a
  Form1.DDSpinEdit8.Value:=25;  //UT
  Form1.DDSpinEdit9.Value:=-40; //U_reset
  Form1.DDSpinEdit10.Value:=100;  //dw_reset
end;

end.
