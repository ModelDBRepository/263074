unit Stimulation;

interface
uses Graphics,Forms,
     Unit1,Unit2;

type
    TStim = class(TObject)
     private
     protected
     public
       Status                           :string;
       t0,dtPulse,Interpulse,
       StimCurrent,StimRate,
       Current,Rate
                                        :double;
       NPulses,iPulse                   :integer;

    procedure StartStimulation(t_:double);
    procedure Stimulate(t_,dt_:double);

    constructor Create;
  end;


implementation
uses Equations2;

constructor TStim.Create;
begin
  inherited Create;
end;


procedure TStim.StartStimulation(t_:double);
begin
  Form2.Visible:=true;
  Form2.LineSeries6.Clear;
  Status:='On';
  t0:=t_;
  StimCurrent:=0;
  StimRate   :=0;
  case Form2.ComboBox1.ItemIndex of
  0: StimCurrent:=Form2.DDSpinEdit7.Value; {pA}
  1: StimRate   :=Form2.DDSpinEdit7.Value; {Hz}
  end;
  dtPulse    :=Form2.DDSpinEdit18.Value; {ms}
  Interpulse :=Form2.DDSpinEdit1.Value; {ms}
  NPulses    :=trunc(Form2.DDSpinEdit2.Value);
  iPulse:=0;
end;

procedure TStim.Stimulate(t_,dt_:double);
begin
  Current:=0;
  Rate:=0;
  if (Status='On')or(Status='Pulse') then begin
     { Start of pulse }
     if abs(trunc((t_-t0        )/Interpulse)*Interpulse+t0        -t_)<dt_ then begin
        Status:='Pulse';
        iPulse:=iPulse+1;
        Form2.Panel1.Color:=clGreen;
        Form2.LineSeries6.AddXY(t_,max(StimCurrent,StimRate));
//        Application.ProcessMessages;
     end;
     { End of pulse }
     if abs(trunc((t_-t0-dtPulse)/Interpulse)*Interpulse+t0+dtPulse-t_)<dt_ then begin
        Status:='On';
        Form2.Panel1.Color:=clRed;
        if iPulse=NPulses then begin
           Status:='Off';
           Form2.Panel1.Color:=clBtnFace;
        end;
        Form2.LineSeries6.AddXY(t_,max(StimCurrent,StimRate));
        Application.ProcessMessages;
     end;
     { During the pulse }
     if Status='Pulse' then begin
        Current:=StimCurrent;
        Rate   :=StimRate;
     end;
  end;
end;

end.
