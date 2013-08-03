object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 131
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 151
    Top = 24
    Width = 113
    Height = 25
    Caption = 'Hello to Forms'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 24
    Width = 113
    Height = 25
    Caption = 'Create Form'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 270
    Top = 24
    Width = 113
    Height = 25
    Caption = 'Clear Forms'
    TabOrder = 2
    OnClick = Button3Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 151
    Top = 88
    Width = 121
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = 'Type a Caption'
    TabOrder = 3
    OnChange = LabeledEdit1Change
  end
end
