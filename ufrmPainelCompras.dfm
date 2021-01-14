object frmPainelCompras: TfrmPainelCompras
  Left = 0
  Top = 0
  Caption = 'Painel de Compras'
  ClientHeight = 679
  ClientWidth = 1039
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 89
    Width = 1039
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 633
    Align = alBottom
    Style.BorderStyle = ebsNone
    TabOrder = 1
    ExplicitTop = 520
    ExplicitWidth = 895
    Height = 46
    Width = 1039
    object cxButton1: TcxButton
      Left = 881
      Top = 6
      Width = 155
      Height = 37
      Caption = 'Realizar pagamento'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 89
    Width = 1039
    Height = 544
    Align = alClient
    TabOrder = 2
    ExplicitTop = 105
    ExplicitWidth = 895
    ExplicitHeight = 408
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
