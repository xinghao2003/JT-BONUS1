object Form2: TForm2
  Left = 0
  Top = 0
  Width = 538
  Height = 567
  AutoScroll = True
  AutoSize = True
  BorderWidth = 10
  Caption = 'JT-BONUS1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 500
    Height = 500
    ActivePage = tsPower
    TabOrder = 0
    object tsPower: TTabSheet
      Caption = 'Power / Exponential'
      object Label2: TLabel
        Left = 4
        Top = 19
        Width = 19
        Height = 15
        Caption = 'x = '
      end
      object Label3: TLabel
        Left = 2
        Top = 45
        Width = 21
        Height = 15
        Caption = 'n = '
      end
      object Label8: TLabel
        Left = 38
        Top = 149
        Width = 47
        Height = 15
        Caption = 'repeat = '
      end
      object gbAlgoPower: TGroupBox
        Left = 3
        Top = 210
        Width = 126
        Height = 127
        Caption = 'Algorithm'
        TabOrder = 0
        object cbPow: TCheckBox
          Left = 11
          Top = 25
          Width = 97
          Height = 17
          Caption = 'cmath pow'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object cbForLoop: TCheckBox
          Left = 11
          Top = 48
          Width = 97
          Height = 17
          Caption = 'for-loop'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object cbSquaring: TCheckBox
          Left = 11
          Top = 71
          Width = 97
          Height = 17
          Caption = 'squaring'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object cbSquaringBitShift: TCheckBox
          Left = 11
          Top = 94
          Width = 97
          Height = 17
          Caption = 'squaring _>>'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
      end
      object rePowerOutput: TRichEdit
        Left = 135
        Top = 3
        Width = 354
        Height = 464
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1')
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object editPowerX: TEdit
        Left = 29
        Top = 16
        Width = 100
        Height = 23
        NumbersOnly = True
        TabOrder = 2
        Text = '2'
      end
      object editPowerN: TEdit
        Left = 29
        Top = 45
        Width = 100
        Height = 23
        NumbersOnly = True
        TabOrder = 3
        Text = '30'
      end
      object editPowerRepeat: TEdit
        Left = 3
        Top = 170
        Width = 126
        Height = 23
        NumbersOnly = True
        TabOrder = 4
        Text = '10000000'
      end
      object btnPower: TButton
        Left = 3
        Top = 90
        Width = 125
        Height = 40
        Caption = 'x^n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btnPowerClick
      end
    end
    object tsPolynomials: TTabSheet
      Caption = 'Polynomials'
      ImageIndex = 1
      object Label4: TLabel
        Left = 3
        Top = 8
        Width = 20
        Height = 15
        Caption = 'k = '
      end
      object Label5: TLabel
        Left = 2
        Top = 37
        Width = 21
        Height = 15
        Caption = 'n = '
      end
      object Label7: TLabel
        Left = 42
        Top = 291
        Width = 47
        Height = 15
        Caption = 'repeat = '
      end
      object editPolyK: TEdit
        Left = 29
        Top = 5
        Width = 100
        Height = 23
        NumbersOnly = True
        TabOrder = 0
        Text = '2'
      end
      object editPolyN: TEdit
        Left = 29
        Top = 34
        Width = 100
        Height = 23
        NumbersOnly = True
        TabOrder = 1
        Text = '30'
      end
      object btnEvaluate: TButton
        Left = 4
        Top = 245
        Width = 125
        Height = 40
        Caption = 'Evaluate Polynomials'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnEvaluateClick
      end
      object editPolyRepeat: TEdit
        Left = 3
        Top = 312
        Width = 126
        Height = 23
        NumbersOnly = True
        TabOrder = 3
        Text = '10000000'
      end
      object gbAlgoPoly: TGroupBox
        Left = 3
        Top = 367
        Width = 126
        Height = 98
        Caption = 'Algorithm'
        TabOrder = 4
        object cbArray: TCheckBox
          Left = 11
          Top = 25
          Width = 97
          Height = 17
          Caption = 'Array'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object cbLinkedList: TCheckBox
          Left = 11
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Linked List'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object cbHorner: TCheckBox
          Left = 11
          Top = 71
          Width = 112
          Height = 17
          Caption = 'Horner'#39's Method'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
      object gbRandom: TGroupBox
        Left = 3
        Top = 63
        Width = 126
        Height = 114
        Caption = 'Random'
        TabOrder = 5
        object Label1: TLabel
          Left = 9
          Top = 26
          Width = 24
          Height = 15
          Caption = 'Start'
        end
        object Label9: TLabel
          Left = 13
          Top = 59
          Width = 20
          Height = 15
          Caption = 'End'
        end
        object btnRandomGen: TButton
          Left = 3
          Top = 81
          Width = 120
          Height = 25
          Caption = 'Random Generate'
          TabOrder = 0
          OnClick = btnRandomGenClick
        end
        object editRangeStart: TEdit
          Left = 39
          Top = 23
          Width = 69
          Height = 23
          NumbersOnly = True
          TabOrder = 1
          Text = '1'
          OnChange = editRangeStartChange
        end
        object editRangeEnd: TEdit
          Left = 39
          Top = 52
          Width = 69
          Height = 23
          NumbersOnly = True
          TabOrder = 2
          Text = '100'
          OnChange = editRangeEndChange
        end
      end
      object rePolyOutput: TRichEdit
        Left = 231
        Top = 3
        Width = 258
        Height = 464
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1')
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object rePolyA: TRichEdit
        Left = 135
        Top = 3
        Width = 90
        Height = 464
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit2')
        ParentFont = False
        TabOrder = 7
        WordWrap = False
        OnKeyPress = rePolyAKeyPress
      end
      object btnLoad: TButton
        Left = 3
        Top = 183
        Width = 126
        Height = 25
        Caption = 'Load from txt'
        TabOrder = 8
        OnClick = btnLoadClick
      end
      object btnSave: TButton
        Left = 3
        Top = 214
        Width = 126
        Height = 25
        Caption = 'Save to txt'
        TabOrder = 9
        OnClick = btnSaveClick
      end
      object cbPolyResult: TCheckBox
        Left = 14
        Top = 344
        Width = 97
        Height = 17
        Caption = 'Result Output'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
  end
  object OpenTextFileDialogPoly: TOpenTextFileDialog
    Left = 148
    Top = 490
  end
  object SaveTextFileDialogPoly: TSaveTextFileDialog
    Left = 188
    Top = 490
  end
end
