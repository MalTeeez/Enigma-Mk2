object Form4: TForm4
  Left = 0
  Top = 0
  Caption = '  1 Way Encryption PRES'
  ClientHeight = 416
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 76
    Top = 73
    Width = 46
    Height = 13
    Caption = 'Message:'
  end
  object Label2: TLabel
    Left = 93
    Top = 114
    Width = 29
    Height = 13
    Caption = 'Code:'
  end
  object Label3: TLabel
    Left = 128
    Top = 211
    Width = 225
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label4: TLabel
    Left = 588
    Top = 40
    Width = 81
    Height = 13
    Caption = 'Code Generator:'
  end
  object Label5: TLabel
    Left = 176
    Top = 40
    Width = 156
    Height = 13
    Caption = 'Message Encryption/Decryption:'
  end
  object Label6: TLabel
    Left = 378
    Top = 360
    Width = 3
    Height = 13
    Visible = False
  end
  object Label7: TLabel
    Left = 544
    Top = 267
    Width = 191
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label8: TLabel
    Left = 88
    Top = 233
    Width = 34
    Height = 13
    Caption = 'Result:'
  end
  object Label9: TLabel
    Left = 751
    Top = 456
    Width = 123
    Height = 13
    Caption = 'Made by MalTeeez - 2019'
  end
  object Button1: TButton
    Left = 128
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Encrypt'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 128
    Top = 72
    Width = 225
    Height = 21
    Hint = 'Die Nachricht, die du ver/entschl'#252'sseln willst.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    OnChange = Edit1Change
  end
  object Memo1: TMemo
    Left = 128
    Top = 230
    Width = 225
    Height = 153
    TabStop = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 10
  end
  object Edit2: TEdit
    Left = 128
    Top = 111
    Width = 225
    Height = 21
    Hint = 'Der Code, mit dem du die Nachricht ver/entschl'#252'sseln willst.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    StyleElements = [seFont, seBorder]
    OnChange = Edit2Change
  end
  object Button2: TButton
    Left = 278
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Decrypt'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 359
    Top = 68
    Width = 42
    Height = 25
    Caption = 'Copy'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 359
    Top = 109
    Width = 42
    Height = 25
    Caption = 'Copy'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 396
    Top = 68
    Width = 50
    Height = 25
    Caption = 'Paste'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 398
    Top = 109
    Width = 44
    Height = 25
    Caption = 'Paste'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 359
    Top = 230
    Width = 50
    Height = 25
    Caption = 'Copy'
    TabOrder = 8
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 359
    Top = 261
    Width = 50
    Height = 25
    Caption = 'Clear'
    TabOrder = 9
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 600
    Top = 236
    Width = 75
    Height = 25
    Caption = 'Generate'
    TabOrder = 11
    OnClick = Button9Click
  end
  object CheckBox1: TCheckBox
    Left = 554
    Top = 159
    Width = 135
    Height = 17
    Caption = 'Uppercase Characters'
    TabOrder = 12
  end
  object CheckBox2: TCheckBox
    Left = 554
    Top = 136
    Width = 135
    Height = 17
    Caption = 'Lowercase Characters'
    TabOrder = 13
  end
  object Edit3: TEdit
    Left = 544
    Top = 288
    Width = 191
    Height = 21
    ReadOnly = True
    TabOrder = 14
  end
  object Button10: TButton
    Left = 741
    Top = 286
    Width = 50
    Height = 25
    Caption = 'Copy'
    TabOrder = 15
    OnClick = Button10Click
  end
  object CheckBox3: TCheckBox
    Left = 554
    Top = 113
    Width = 63
    Height = 17
    Caption = 'Numbers'
    TabOrder = 16
  end
  object CheckBox4: TCheckBox
    Left = 554
    Top = 90
    Width = 63
    Height = 17
    Caption = 'Symbols'
    TabOrder = 17
  end
  object CheckBox5: TCheckBox
    Left = 554
    Top = 67
    Width = 47
    Height = 17
    Caption = 'Other'
    TabOrder = 18
  end
  object Edit4: TEdit
    Left = 642
    Top = 180
    Width = 103
    Height = 21
    TabOrder = 19
  end
  object CheckBox6: TCheckBox
    Left = 554
    Top = 182
    Width = 82
    Height = 17
    Caption = '(Beta) Own:'
    TabOrder = 20
  end
  object TrackBar1: TTrackBar
    Left = 544
    Top = 205
    Width = 209
    Height = 27
    Max = 1024
    Frequency = 32
    Position = 16
    TabOrder = 21
    OnChange = TrackBar1Change
  end
  object Edit5: TEdit
    Left = 751
    Top = 207
    Width = 40
    Height = 21
    NumbersOnly = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 22
    Text = '16'
    TextHint = 'Enter your password lenght here'
    OnChange = Edit5Change
  end
  object UpDown1: TUpDown
    Left = 791
    Top = 207
    Width = 16
    Height = 21
    Associate = Edit5
    Max = 64
    ParentShowHint = False
    Position = 16
    ShowHint = False
    TabOrder = 23
  end
  object Button11: TButton
    Left = 788
    Top = 286
    Width = 57
    Height = 25
    Caption = 'SetCode'
    TabOrder = 24
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 436
    Top = 68
    Width = 21
    Height = 25
    Caption = 'C'
    TabOrder = 25
    OnClick = Button12Click
  end
  object CheckBox7: TCheckBox
    Left = 128
    Top = 159
    Width = 97
    Height = 15
    Hint = 'Automatically generate the Encryption Code ?'
    HelpType = htKeyword
    Caption = 'Auto Gen'
    Checked = True
    State = cbChecked
    TabOrder = 26
  end
  object CheckBox8: TCheckBox
    Left = 256
    Top = 159
    Width = 65
    Height = 17
    Hint = 'Re-Use Code ?'
    HelpType = htKeyword
    Caption = 'Re-Use'
    Checked = True
    State = cbChecked
    TabOrder = 27
  end
  object ActivityIndicator1: TActivityIndicator
    Left = 514
    Top = 286
    Cursor = crHourGlass
    IndicatorSize = aisSmall
  end
end
