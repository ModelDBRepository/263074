object Form2: TForm2
  Left = 1266
  Top = 574
  Width = 623
  Height = 366
  AutoSize = True
  Caption = 'Form2: Stimulator'
  Color = 6730751
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 144
  TextHeight = 20
  object GroupBox1: TGroupBox
    Left = 10
    Top = 0
    Width = 251
    Height = 151
    TabOrder = 0
    object Label7: TLabel
      Left = 10
      Top = 21
      Width = 113
      Height = 20
      Caption = 'StimCurrent, pA'
    end
    object Label1: TLabel
      Left = 10
      Top = 51
      Width = 82
      Height = 20
      Caption = 'dtPulse, ms'
    end
    object Label2: TLabel
      Left = 10
      Top = 81
      Width = 100
      Height = 20
      Caption = 'Interpulse, ms'
    end
    object Label3: TLabel
      Left = 10
      Top = 111
      Width = 58
      Height = 20
      Caption = 'NPulses'
    end
    object DDSpinEdit7: TDDSpinEdit
      Left = 164
      Top = 19
      Width = 81
      Height = 31
      StrWidth = 2
      StrDecimals = 0
      Increment = 10.000000000000000000
      TabOrder = 0
      Value = 400.000000000000000000
    end
    object DDSpinEdit18: TDDSpinEdit
      Left = 164
      Top = 49
      Width = 81
      Height = 31
      StrWidth = 2
      StrDecimals = 1
      Increment = 0.500000000000000000
      TabOrder = 1
      Value = 20.000000000000000000
    end
    object DDSpinEdit1: TDDSpinEdit
      Left = 164
      Top = 79
      Width = 81
      Height = 31
      StrWidth = 2
      StrDecimals = 0
      Increment = 100.000000000000000000
      TabOrder = 2
      Value = 2000.000000000000000000
    end
    object DDSpinEdit2: TDDSpinEdit
      Left = 164
      Top = 109
      Width = 81
      Height = 31
      StrWidth = 2
      StrDecimals = 0
      Increment = 10.000000000000000000
      TabOrder = 3
      Value = 800.000000000000000000
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 20
      Width = 153
      Height = 28
      ItemHeight = 20
      ItemIndex = 1
      TabOrder = 4
      Text = 'StimRate, Hz'
      Items.Strings = (
        'StimCurrent, pA'
        'StimRate, Hz')
    end
  end
  object Panel1: TPanel
    Left = 400
    Top = 50
    Width = 61
    Height = 51
    TabOrder = 1
  end
  object Chart6: TChart
    Left = 0
    Top = 159
    Width = 601
    Height = 152
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'ms'
    LeftAxis.Title.Caption = 'pA'
    Legend.Alignment = laTop
    Legend.ColorWidth = 100
    Legend.LegendStyle = lsSeries
    Legend.ShadowSize = 0
    View3D = False
    Color = 6730751
    TabOrder = 2
    object Button16: TButton
      Left = 490
      Top = 290
      Width = 141
      Height = 21
      Caption = 'Limits like these'
      TabOrder = 0
    end
    object Button17: TButton
      Left = 10
      Top = 131
      Width = 51
      Height = 22
      Caption = 'BMP'
      TabOrder = 1
    end
    object LineSeries6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlack
      Title = 'Stimulus'
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
end
