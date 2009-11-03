object frmPointerScannerSettings: TfrmPointerScannerSettings
  Left = 865
  Top = 401
  BorderStyle = bsSingle
  Caption = 'Pointerscanner scanoptions'
  ClientHeight = 393
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 73
    Height = 13
    Caption = 'Address to find:'
  end
  object edtAddress: TEdit
    Left = 8
    Top = 23
    Width = 201
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 8
    TabOrder = 0
  end
  object rbDefault: TRadioButton
    Left = 216
    Top = 8
    Width = 121
    Height = 17
    Hint = 
      'Starts from static addresses and then follows the path till it e' +
      'ncounters the target address'
    Caption = 'Old pointer scan'
    TabOrder = 1
    OnClick = rbDefaultClick
  end
  object rbReverse: TRadioButton
    Left = 216
    Top = 24
    Width = 129
    Height = 17
    Hint = 
      'Starts from the target address and finds all addresses that poin' +
      't near there, and then go back further and further'
    Caption = 'Reverse pointer scan'
    Checked = True
    TabOrder = 2
    TabStop = True
    OnClick = rbReverseClick
  end
  object PSSettings: TPageControl
    Left = 8
    Top = 48
    Width = 353
    Height = 217
    ActivePage = PSReverse
    TabOrder = 3
    object PSDefault: TTabSheet
      Caption = 'Default'
      TabVisible = False
      object Label1: TLabel
        Left = 152
        Top = 112
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label2: TLabel
        Left = 224
        Top = 112
        Width = 16
        Height = 13
        Caption = 'To:'
      end
      object Label4: TLabel
        Left = 123
        Top = 152
        Width = 203
        Height = 13
        Caption = 'Pointer path must only be inside this region:'
      end
      object Label5: TLabel
        Left = 152
        Top = 168
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label6: TLabel
        Left = 224
        Top = 168
        Width = 16
        Height = 13
        Caption = 'To:'
      end
      object Label8: TLabel
        Left = 124
        Top = 96
        Width = 189
        Height = 13
        Caption = 'Address range to scan for static pointers'
      end
      object edtStart: TEdit
        Left = 152
        Top = 128
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 0
        Text = '00401000'
      end
      object edtStop: TEdit
        Left = 224
        Top = 128
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 1
        Text = '00700000'
      end
      object edtFilterStart: TEdit
        Left = 152
        Top = 184
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 2
        Text = '00400000'
        OnChange = edtFilterStartChange
      end
      object edtFilterStop: TEdit
        Left = 224
        Top = 184
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 3
        Text = '70000000'
        OnChange = edtFilterStopChange
      end
      object cbunaligned: TCheckBox
        Left = 0
        Top = 56
        Width = 297
        Height = 17
        Caption = 'Also dissect unalligned pointers (slow and almost useless)'
        TabOrder = 4
      end
      object ListBox1: TListBox
        Left = 0
        Top = 96
        Width = 121
        Height = 113
        ItemHeight = 16
        TabOrder = 5
        OnClick = ListBox1Click
      end
      object CheckBox1: TCheckBox
        Left = 0
        Top = 24
        Width = 345
        Height = 17
        Caption = 
          'Fast: Skip already dissected pointers (May miss some important o' +
          'nes)'
        TabOrder = 6
      end
      object CheckBox2: TCheckBox
        Left = 0
        Top = 0
        Width = 353
        Height = 17
        Caption = 'Writable memory as base only'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CheckBox3: TCheckBox
        Left = 0
        Top = 72
        Width = 353
        Height = 17
        Caption = 'Base pointers can be unalligned'
        TabOrder = 8
      end
      object CheckBox4: TCheckBox
        Left = 0
        Top = 40
        Width = 337
        Height = 17
        Caption = 'Psychotic: Do not skip any memory (slow, REALLY slow....)'
        TabOrder = 9
      end
    end
    object PSReverse: TTabSheet
      Caption = 'Reverse'
      ImageIndex = 1
      TabVisible = False
      object Label10: TLabel
        Left = 32
        Top = 56
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label11: TLabel
        Left = 104
        Top = 56
        Width = 16
        Height = 13
        Caption = 'To:'
      end
      object Label13: TLabel
        Left = 3
        Top = 40
        Width = 200
        Height = 13
        Caption = 'Pointer path may only be inside this region:'
      end
      object Label14: TLabel
        Left = 0
        Top = 146
        Width = 121
        Height = 13
        Caption = 'Maximum offset to accept'
        Enabled = False
        Visible = False
      end
      object CbAlligned: TCheckBox
        Left = 0
        Top = 0
        Width = 185
        Height = 17
        Caption = 'Addresses must be 32-bit alligned'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 104
        Top = 72
        Width = 65
        Height = 24
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 1
        Text = '7FFFFFFFF'
        OnChange = Edit1Change
      end
      object Edit2: TEdit
        Left = 32
        Top = 72
        Width = 65
        Height = 24
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 2
        Text = '00000000'
        OnChange = Edit2Change
      end
      object cbStaticOnly: TCheckBox
        Left = 0
        Top = 16
        Width = 201
        Height = 17
        Caption = 'Only find paths with a static address'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object cbStackAsBase: TCheckBox
        Left = 0
        Top = 130
        Width = 337
        Height = 17
        Caption = 
          'Accept stack addresses of the main thread as base pointer as wel' +
          'l'
        TabOrder = 4
        Visible = False
      end
      object Edit3: TEdit
        Left = 0
        Top = 162
        Width = 121
        Height = 24
        Enabled = False
        TabOrder = 5
        Text = '4096'
        Visible = False
      end
      object cbOnlyStackAsBase: TCheckBox
        Left = 0
        Top = 186
        Width = 209
        Height = 17
        Caption = 'Only use the maintread stack as a base'
        TabOrder = 6
        Visible = False
      end
      object cbUseHeapData: TCheckBox
        Left = 0
        Top = 98
        Width = 345
        Height = 13
        Caption = 'Improve pointerscan with gathered heap data'
        Enabled = False
        TabOrder = 7
        OnClick = cbUseHeapDataClick
      end
      object cbHeapOnly: TCheckBox
        Left = 13
        Top = 111
        Width = 332
        Height = 13
        Caption = 'Only allow static and heap addresses in the path'
        Enabled = False
        TabOrder = 8
      end
    end
  end
  object cbreuse: TCheckBox
    Left = 8
    Top = 267
    Width = 345
    Height = 17
    Caption = 
      'Do not free the memory copy when finished, but reuse it for next' +
      ' scan'
    TabOrder = 4
  end
  object cbMustEndWithSpecificOffset: TCheckBox
    Left = 8
    Top = 288
    Width = 201
    Height = 17
    Caption = 'Pointers must end with specific offsets'
    TabOrder = 5
    OnClick = cbMustEndWithSpecificOffsetClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 360
    Height = 87
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object Label3: TLabel
      Left = 48
      Top = 35
      Width = 76
      Height = 13
      Caption = 'Size of structure'
    end
    object Label12: TLabel
      Left = 184
      Top = 34
      Width = 45
      Height = 13
      Caption = 'Max level'
    end
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 113
      Height = 13
      Caption = 'Nr of threads scanning: '
    end
    object Button1: TButton
      Left = 112
      Top = 56
      Width = 65
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object editStructsize: TEdit
      Left = 128
      Top = 31
      Width = 49
      Height = 24
      TabOrder = 1
      Text = '2048'
    end
    object editMaxLevel: TEdit
      Left = 232
      Top = 30
      Width = 65
      Height = 24
      TabOrder = 2
      Text = '5'
    end
    object btnCancel: TButton
      Left = 184
      Top = 56
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 3
    end
    object edtThreadcount: TEdit
      Left = 128
      Top = 5
      Width = 49
      Height = 24
      TabOrder = 4
      Text = '2'
    end
    object ComboBox1: TComboBox
      Left = 184
      Top = 4
      Width = 113
      Height = 21
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 5
      Text = 'Normal'
      Items.Strings = (
        'Idle'
        'Lowest'
        'Lower'
        'Normal'
        'Higher'
        'Highest'
        'TimeCritical')
    end
  end
end
