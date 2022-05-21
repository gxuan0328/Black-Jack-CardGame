object Form1: TForm1
  Left = 938
  Top = -730
  Width = 870
  Height = 451
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Card1: TCard
    Left = 56
    Top = 120
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card2: TCard
    Left = 312
    Top = 200
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card3: TCard
    Left = 400
    Top = 200
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card4: TCard
    Left = 488
    Top = 200
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card5: TCard
    Left = 576
    Top = 200
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card6: TCard
    Left = 664
    Top = 200
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card7: TCard
    Left = 312
    Top = 24
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card8: TCard
    Left = 400
    Top = 24
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card9: TCard
    Left = 488
    Top = 24
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card10: TCard
    Left = 576
    Top = 24
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Card11: TCard
    Left = 664
    Top = 24
    Width = 71
    Height = 96
    Value = 1
    Suit = Hearts
    ShowDeck = True
    DeckType = Standard1
  end
  object Label1: TLabel
    Left = 200
    Top = 240
    Width = 32
    Height = 16
    Alignment = taCenter
    Caption = #23565#25163
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #27161#26999#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 64
    Width = 32
    Height = 16
    Alignment = taCenter
    Caption = #33258#24049
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #27161#26999#39636
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 248
    Width = 57
    Height = 33
    Caption = #38283#29260
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 248
    Width = 57
    Height = 33
    Caption = 'PASS'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 496
    Top = 128
    Width = 57
    Height = 33
    Caption = #35201#29260
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 584
    Top = 128
    Width = 57
    Height = 33
    Caption = #35201#29260
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 672
    Top = 128
    Width = 57
    Height = 33
    Caption = #35201#29260
    TabOrder = 4
    OnClick = Button5Click
  end
  object Memo1: TMemo
    Left = 752
    Top = 56
    Width = 81
    Height = 41
    Alignment = taCenter
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object Memo2: TMemo
    Left = 752
    Top = 232
    Width = 81
    Height = 41
    Alignment = taCenter
    Lines.Strings = (
      'Memo2')
    TabOrder = 6
  end
  object UDPC: TIdUDPClient
    Active = True
    Host = '127.0.0.1'
    Port = 8000
    Left = 32
    Top = 56
  end
  object UDPS: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 7999
    OnUDPRead = UDPSUDPRead
    Left = 72
    Top = 56
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 56
    object setting1: TMenuItem
      Caption = 'setting'
      object newgame1: TMenuItem
        Caption = 'New Game'
        OnClick = newgame1Click
      end
    end
  end
end
