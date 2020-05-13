object Form1: TForm1
  Left = 189
  Top = 63
  Width = 1073
  Height = 1198
  AutoSize = True
  Caption = 'Epileptor-4, v 18.3'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 144
  TextHeight = 18
  object Label1: TLabel
    Left = 710
    Top = 100
    Width = 38
    Height = 18
    Caption = 'dt,ms'
  end
  object Label6: TLabel
    Left = 680
    Top = 70
    Width = 64
    Height = 18
    Caption = 't_end,ms'
  end
  object Label19: TLabel
    Left = 870
    Top = 70
    Width = 54
    Height = 18
    Caption = 'n_Draw'
  end
  object Label4: TLabel
    Left = 870
    Top = 100
    Width = 54
    Height = 18
    Caption = 'n_Write'
  end
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 641
    Height = 301
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'ms'
    LeftAxis.Title.Caption = 'mV'
    Legend.Alignment = laTop
    Legend.ColorWidth = 100
    Legend.LegendStyle = lsSeries
    Legend.ShadowSize = 0
    View3D = False
    Color = clMoneyGreen
    TabOrder = 0
    object Button4: TButton
      Left = 490
      Top = 280
      Width = 141
      Height = 21
      Caption = 'Limits like these'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button7: TButton
      Left = 550
      Top = 1
      Width = 81
      Height = 22
      Caption = 'Auto'
      TabOrder = 1
      OnClick = Button7Click
    end
    object Button12: TButton
      Left = 10
      Top = 280
      Width = 51
      Height = 21
      Caption = 'BMP'
      TabOrder = 2
      OnClick = Button12Click
    end
    object Series5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGray
      Title = 'uu'
      VertAxis = aRightAxis
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
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'U'
      LinePen.Width = 2
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
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'w'
      VertAxis = aRightAxis
      LinePen.Color = clPurple
      LinePen.Width = 2
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
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clYellow
      Title = 'U2'
      LinePen.Width = 2
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
  object Button1: TButton
    Left = 690
    Top = 0
    Width = 121
    Height = 51
    Caption = 'Run'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -26
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DDSpinEdit6: TDDSpinEdit
    Left = 760
    Top = 66
    Width = 81
    Height = 28
    StrWidth = 2
    StrDecimals = 0
    Increment = 5000.000000000000000000
    TabOrder = 3
    Value = 600000.000000000000000000
    OnDblClick = DDSpinEdit6DblClick
  end
  object Chart2: TChart
    Left = 0
    Top = 300
    Width = 641
    Height = 301
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'ms'
    LeftAxis.Title.Caption = 'mM'
    Legend.Alignment = laTop
    Legend.ColorWidth = 100
    Legend.LegendStyle = lsSeries
    Legend.ShadowSize = 0
    View3D = False
    Color = clMoneyGreen
    TabOrder = 4
    object Button5: TButton
      Left = 490
      Top = 280
      Width = 141
      Height = 21
      Caption = 'Limits like these'
      TabOrder = 0
      OnClick = Button5Click
    end
    object Button11: TButton
      Left = 10
      Top = 280
      Width = 51
      Height = 21
      Caption = 'BMP'
      TabOrder = 1
      OnClick = Button11Click
    end
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Title = 'K'
      LinePen.Color = clBlue
      LinePen.Width = 2
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
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 8421631
      Title = 'Na'
      LinePen.Color = clPurple
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
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGray
      Title = 'NaKpump'
      VertAxis = aRightAxis
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
  object Button2: TButton
    Left = 810
    Top = 0
    Width = 121
    Height = 51
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -26
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object DDSpinEdit19: TDDSpinEdit
    Left = 940
    Top = 66
    Width = 81
    Height = 28
    StrWidth = 2
    StrDecimals = 0
    Increment = 10.000000000000000000
    TabOrder = 6
    Value = 50.000000000000000000
    OnDblClick = DDSpinEdit6DblClick
  end
  object Button3: TButton
    Left = 930
    Top = 20
    Width = 121
    Height = 31
    Caption = 'Clean'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object Chart3: TChart
    Left = 0
    Top = 600
    Width = 641
    Height = 301
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'ms'
    LeftAxis.Title.Caption = 'Hz'
    Legend.Alignment = laTop
    Legend.ColorWidth = 100
    Legend.LegendStyle = lsSeries
    Legend.ShadowSize = 0
    View3D = False
    Color = clMoneyGreen
    TabOrder = 8
    object Button6: TButton
      Left = 490
      Top = 280
      Width = 141
      Height = 21
      Caption = 'Limits like these'
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button13: TButton
      Left = 10
      Top = 280
      Width = 51
      Height = 21
      Caption = 'BMP'
      TabOrder = 1
      OnClick = Button13Click
    end
    object Series6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'nu'
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
    object LineSeries3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Title = 'xD'
      VertAxis = aRightAxis
      LinePen.Color = clBlue
      LinePen.Width = 2
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
    object Series7: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'm'
      LinePen.Width = 2
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
  object Chart4: TChart
    Left = 660
    Top = 920
    Width = 391
    Height = 221
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'pA'
    LeftAxis.Title.Caption = 'Hz'
    Legend.Alignment = laTop
    Legend.ColorWidth = 100
    Legend.LegendStyle = lsSeries
    Legend.ShadowSize = 0
    View3D = False
    Color = clMoneyGreen
    TabOrder = 9
    object Button10: TButton
      Left = 310
      Top = 10
      Width = 74
      Height = 21
      Caption = 'Write'
      TabOrder = 0
      OnClick = Button10Click
    end
    object Button15: TButton
      Left = 10
      Top = 190
      Width = 51
      Height = 21
      Caption = 'BMP'
      TabOrder = 1
      OnClick = Button15Click
    end
    object LineSeries4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'nu(u)'
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
  object DDSpinEdit4: TDDSpinEdit
    Left = 940
    Top = 96
    Width = 81
    Height = 28
    StrWidth = 2
    StrDecimals = 0
    Increment = 10.000000000000000000
    TabOrder = 10
    Value = 20.000000000000000000
  end
  object GroupBox1: TGroupBox
    Left = 670
    Top = 130
    Width = 361
    Height = 151
    Caption = 'Neuron-observer'
    TabOrder = 11
    object Label2: TLabel
      Left = 16
      Top = 21
      Width = 25
      Height = 18
      Caption = 'Cm'
    end
    object Label11: TLabel
      Left = 19
      Top = 51
      Width = 41
      Height = 18
      Caption = 'tau_w'
    end
    object Label10: TLabel
      Left = 184
      Top = 51
      Width = 64
      Height = 18
      Caption = 'dw_reset'
    end
    object Label3: TLabel
      Left = 200
      Top = 21
      Width = 29
      Height = 18
      Caption = 'g_U'
    end
    object Label8: TLabel
      Left = 19
      Top = 81
      Width = 20
      Height = 18
      Caption = 'UT'
    end
    object Label9: TLabel
      Left = 194
      Top = 81
      Width = 55
      Height = 18
      Caption = 'U_reset'
    end
    object Label7: TLabel
      Left = 20
      Top = 111
      Width = 21
      Height = 18
      Caption = 'I_a'
    end
    object DDSpinEdit2: TDDSpinEdit
      Left = 90
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 1.000000000000000000
      TabOrder = 0
      Value = 1000.000000000000000000
    end
    object DDSpinEdit11: TDDSpinEdit
      Left = 90
      Top = 49
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 1.000000000000000000
      TabOrder = 1
      Value = 200.000000000000000000
    end
    object DDSpinEdit3: TDDSpinEdit
      Left = 270
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 3
      Increment = 1.000000000000000000
      TabOrder = 3
      Value = 1.500000000000000000
    end
    object DDSpinEdit10: TDDSpinEdit
      Left = 270
      Top = 49
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 2
      Increment = 1.000000000000000000
      TabOrder = 2
      Value = 100.000000000000000000
    end
    object DDSpinEdit8: TDDSpinEdit
      Left = 90
      Top = 79
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 1.000000000000000000
      TabOrder = 4
      Value = 25.000000000000000000
    end
    object DDSpinEdit9: TDDSpinEdit
      Left = 270
      Top = 79
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 1.000000000000000000
      TabOrder = 5
      Value = -40.000000000000000000
    end
    object DDSpinEdit7: TDDSpinEdit
      Left = 90
      Top = 109
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 10.000000000000000000
      TabOrder = 6
      Value = 116.000000000000000000
    end
    object Button16: TButton
      Left = 190
      Top = 120
      Width = 81
      Height = 21
      Caption = 'QIF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 270
      Top = 120
      Width = 81
      Height = 21
      Caption = 'aQIF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button17Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 690
    Top = 370
    Width = 341
    Height = 91
    Caption = 'K'
    TabOrder = 12
    object Label13: TLabel
      Left = 10
      Top = 21
      Width = 41
      Height = 18
      Caption = 'tau_K'
    end
    object Label14: TLabel
      Left = 165
      Top = 21
      Width = 64
      Height = 18
      Caption = 'dK_reset'
    end
    object Label18: TLabel
      Left = 170
      Top = 51
      Width = 50
      Height = 18
      Caption = 'K_bath'
    end
    object Label29: TLabel
      Left = 13
      Top = 51
      Width = 20
      Height = 18
      Caption = 'K0'
    end
    object DDSpinEdit13: TDDSpinEdit
      Left = 70
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 10000.000000000000000000
      TabOrder = 2
      Value = 100000.000000000000000000
    end
    object DDSpinEdit14: TDDSpinEdit
      Left = 250
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 2
      Increment = 0.010000000000000000
      TabOrder = 3
      Value = 0.020000000000000000
      OnDblClick = DDSpinEdit14DblClick
    end
    object DDSpinEdit29: TDDSpinEdit
      Left = 70
      Top = 49
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 1
      Increment = 0.500000000000000000
      TabOrder = 0
      Value = 3.000000000000000000
    end
    object DDSpinEdit18: TDDSpinEdit
      Left = 250
      Top = 49
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 1
      Increment = 0.500000000000000000
      TabOrder = 1
      Value = 8.500000000000000000
    end
  end
  object DDSpinEdit1: TDDSpinEdit
    Left = 760
    Top = 96
    Width = 81
    Height = 28
    StrWidth = 2
    StrDecimals = 2
    Increment = 1.000000000000000000
    TabOrder = 2
    Value = 0.500000000000000000
  end
  object GroupBox4: TGroupBox
    Left = 670
    Top = 280
    Width = 361
    Height = 91
    Caption = 'Na and pump'
    TabOrder = 13
    object Label16: TLabel
      Left = 15
      Top = 21
      Width = 62
      Height = 18
      Caption = 'ro_pump'
    end
    object Label28: TLabel
      Left = 190
      Top = 21
      Width = 68
      Height = 18
      Caption = 'roK_roNa'
    end
    object Label17: TLabel
      Left = 183
      Top = 51
      Width = 73
      Height = 18
      Caption = 'dNa_reset'
    end
    object Label27: TLabel
      Left = 18
      Top = 51
      Width = 50
      Height = 18
      Caption = 'tau_Na'
    end
    object DDSpinEdit17: TDDSpinEdit
      Left = 90
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 4
      Increment = 0.000100000000000000
      TabOrder = 0
      Value = 0.000200000000000000
      OnDblClick = DDSpinEdit17DblClick
    end
    object DDSpinEdit28: TDDSpinEdit
      Left = 270
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 2
      Increment = 1.000000000000000000
      TabOrder = 1
      Value = 10.000000000000000000
    end
    object DDSpinEdit16: TDDSpinEdit
      Left = 270
      Top = 49
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 3
      Increment = 0.010000000000000000
      TabOrder = 2
      Value = 0.030000000000000000
      OnDblClick = DDSpinEdit16DblClick
    end
    object DDSpinEdit27: TDDSpinEdit
      Left = 90
      Top = 49
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 1000.000000000000000000
      TabOrder = 3
      Value = 20000.000000000000000000
    end
  end
  object GroupBox5: TGroupBox
    Left = 690
    Top = 460
    Width = 341
    Height = 61
    Caption = 'xD'
    TabOrder = 14
    object Label21: TLabel
      Left = 165
      Top = 21
      Width = 72
      Height = 18
      Caption = 'dxD_reset'
    end
    object Label22: TLabel
      Left = 10
      Top = 21
      Width = 49
      Height = 18
      Caption = 'tau_xD'
    end
    object DDSpinEdit21: TDDSpinEdit
      Left = 70
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 100.000000000000000000
      TabOrder = 0
      Value = 2000.000000000000000000
    end
    object DDSpinEdit22: TDDSpinEdit
      Left = 250
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 3
      Increment = 0.010000000000000000
      TabOrder = 1
      Value = 0.010000000000000000
      OnDblClick = DDSpinEdit22DblClick
    end
  end
  object GroupBox6: TGroupBox
    Left = 670
    Top = 760
    Width = 361
    Height = 121
    Caption = 'uu'
    TabOrder = 15
    object Label5: TLabel
      Left = 220
      Top = 21
      Width = 20
      Height = 18
      Caption = 'gE'
    end
    object Label12: TLabel
      Left = 18
      Top = 21
      Width = 41
      Height = 18
      Caption = 'gI_gE'
    end
    object Label15: TLabel
      Left = 136
      Top = 54
      Width = 124
      Height = 18
      Caption = 'I_stim=(VK-VK0)*'
    end
    object Label20: TLabel
      Left = 218
      Top = 84
      Width = 23
      Height = 18
      Caption = 'DB'
    end
    object Label25: TLabel
      Left = 9
      Top = 84
      Width = 69
      Height = 18
      Caption = 'Noise, pA'
    end
    object DDSpinEdit12: TDDSpinEdit
      Left = 90
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 2
      Increment = 0.100000000000000000
      TabOrder = 0
      Value = 0.500000000000000000
    end
    object DDSpinEdit5: TDDSpinEdit
      Left = 270
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 1.000000000000000000
      TabOrder = 1
      Value = 5.000000000000000000
    end
    object DDSpinEdit15: TDDSpinEdit
      Left = 270
      Top = 49
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 2
      Increment = 0.100000000000000000
      TabOrder = 2
      Value = 0.500000000000000000
      OnDblClick = DDSpinEdit15DblClick
    end
    object DDSpinEdit25: TDDSpinEdit
      Left = 90
      Top = 79
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 5.000000000000000000
      TabOrder = 4
      Value = 25.000000000000000000
      OnDblClick = DDSpinEdit25DblClick
    end
    object DDSpinEdit20: TDDSpinEdit
      Left = 270
      Top = 79
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 100.000000000000000000
      TabOrder = 3
      Value = 1000.000000000000000000
    end
  end
  object Chart5: TChart
    Left = 0
    Top = 900
    Width = 641
    Height = 243
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'ms'
    LeftAxis.Title.Caption = 'mV'
    Legend.Alignment = laTop
    Legend.ColorWidth = 100
    Legend.LegendStyle = lsSeries
    Legend.ShadowSize = 0
    View3D = False
    Color = clMoneyGreen
    TabOrder = 16
    object Button8: TButton
      Left = 490
      Top = 290
      Width = 141
      Height = 21
      Caption = 'Limits like these'
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button14: TButton
      Left = 10
      Top = 221
      Width = 51
      Height = 22
      Caption = 'BMP'
      TabOrder = 1
      OnClick = Button14Click
    end
    object LineSeries5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'V'
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
  object Button9: TButton
    Left = 930
    Top = 0
    Width = 121
    Height = 21
    Caption = 'Stimulus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = Button9Click
  end
  object GroupBox8: TGroupBox
    Left = 690
    Top = 530
    Width = 341
    Height = 61
    Caption = 'V-equation'
    TabOrder = 18
    object Label30: TLabel
      Left = 175
      Top = 21
      Width = 45
      Height = 18
      Caption = 'gL, nS'
    end
    object Label31: TLabel
      Left = 10
      Top = 21
      Width = 39
      Height = 18
      Caption = 'C, pF'
    end
    object DDSpinEdit30: TDDSpinEdit
      Left = 250
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 1.000000000000000000
      TabOrder = 0
      Value = 1.000000000000000000
    end
    object DDSpinEdit31: TDDSpinEdit
      Left = 70
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 1.000000000000000000
      TabOrder = 1
      Value = 10.000000000000000000
    end
  end
  object GroupBox7: TGroupBox
    Left = 690
    Top = 601
    Width = 161
    Height = 70
    Caption = 'Synaptic kinetics m'
    TabOrder = 19
    object Label26: TLabel
      Left = 16
      Top = 31
      Width = 43
      Height = 18
      Caption = 'tau_m'
    end
    object DDSpinEdit26: TDDSpinEdit
      Left = 70
      Top = 29
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 5.000000000000000000
      TabOrder = 0
      OnDblClick = DDSpinEdit26DblClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 690
    Top = 691
    Width = 341
    Height = 62
    Caption = 'f-I curve '
    TabOrder = 20
    object Label23: TLabel
      Left = 16
      Top = 21
      Width = 33
      Height = 18
      Caption = 'Gain'
    end
    object Label24: TLabel
      Left = 186
      Top = 21
      Width = 45
      Height = 18
      Caption = 'u0, pA'
    end
    object DDSpinEdit23: TDDSpinEdit
      Left = 70
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 3
      Increment = 10.000000000000000000
      TabOrder = 0
      Value = 20.000000000000000000
    end
    object DDSpinEdit24: TDDSpinEdit
      Left = 250
      Top = 19
      Width = 81
      Height = 28
      StrWidth = 2
      StrDecimals = 0
      Increment = 5.000000000000000000
      TabOrder = 1
      Value = 25.000000000000000000
    end
  end
  object GroupBox9: TGroupBox
    Left = 860
    Top = 600
    Width = 171
    Height = 91
    Caption = 'Global'
    TabOrder = 21
    object CheckBox1: TCheckBox
      Left = 10
      Top = 20
      Width = 151
      Height = 21
      Caption = 'Piecewise-linear'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 10
      Top = 40
      Width = 121
      Height = 21
      Caption = '"only xD"'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 10
      Top = 60
      Width = 151
      Height = 21
      Caption = 'with V-equation'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox3Click
    end
  end
end
