object DM: TDM
  OldCreateOrder = False
  Height = 296
  Width = 491
  object FDConn: TFDConnection
    ConnectionName = 'Milk'
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=MilkDrive')
    ResourceOptions.AssignedValues = [rvServerOutputSize]
    LoginDialog = LoginDialog
    LoginPrompt = False
    Transaction = FDTrans
    UpdateTransaction = FDTrans
    Left = 80
    Top = 72
  end
  object FDTrans: TFDTransaction
    Connection = FDConn
    Left = 112
    Top = 152
  end
  object LoginDialog: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 192
    Top = 240
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 128
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 192
    Top = 190
  end
  object MilkDrive: TFDPhysFBDriverLink
    DriverID = 'MilkDrive'
    Left = 360
    Top = 174
  end
  object FDScript: TFDScript
    SQLScripts = <
      item
        Name = 'Update'
      end>
    Connection = FDConn
    Transaction = FDTrans
    ScriptOptions.SQLDialect = 3
    Params = <>
    Macros = <>
    Left = 24
    Top = 238
  end
  object QryAux: TFDQuery
    Connection = FDConn
    Left = 368
    Top = 48
  end
end
