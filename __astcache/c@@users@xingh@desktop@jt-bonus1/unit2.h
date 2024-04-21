﻿//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "lib\operation.h"
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtDlgs.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TPageControl *pcMain;
	TTabSheet *tsPower;
	TTabSheet *tsPolynomials;
	TGroupBox *gbAlgoPower;
	TCheckBox *cbPow;
	TCheckBox *cbForLoop;
	TCheckBox *cbSquaring;
	TCheckBox *cbSquaringBitShift;
	TRichEdit *rePowerOutput;
	TEdit *editPowerX;
	TEdit *editPowerN;
	TEdit *editPowerRepeat;
	TButton *btnPower;
	TLabel *Label2;
	TLabel *Label3;
	TEdit *editPolyK;
	TLabel *Label4;
	TLabel *Label5;
	TEdit *editPolyN;
	TButton *btnEvaluate;
	TEdit *editPolyRepeat;
	TGroupBox *gbAlgoPoly;
	TCheckBox *cbArray;
	TCheckBox *cbLinkedList;
	TCheckBox *cbHorner;
	TButton *btnRandomGen;
	TButton *btnLoad;
	TButton *btnSave;
	TGroupBox *gbRandom;
	TRichEdit *rePolyOutput;
	TRichEdit *rePolyA;
	TOpenTextFileDialog *OpenTextFileDialogPoly;
	TSaveTextFileDialog *SaveTextFileDialogPoly;
	TLabel *Label7;
	TLabel *Label8;
	TEdit *editRangeStart;
	TLabel *Label1;
	TLabel *Label9;
	TEdit *editRangeEnd;
	TCheckBox *cbPolyResult;
	void __fastcall btnLoadClick(TObject *Sender);
	void __fastcall btnSaveClick(TObject *Sender);
	void __fastcall rePolyAKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall btnRandomGenClick(TObject *Sender);
	void __fastcall editRangeStartChange(TObject *Sender);
	void __fastcall editRangeEndChange(TObject *Sender);
	void __fastcall btnEvaluateClick(TObject *Sender);
	void __fastcall btnPowerClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
	void __fastcall AddNumbersToRichEdit();
    void __fastcall rePolyAParsing();
};


//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
