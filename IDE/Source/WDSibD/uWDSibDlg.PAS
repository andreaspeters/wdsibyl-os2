Unit uWDSibDlg;

Interface

Uses Forms, StdCtrls, ExtCtrls, Dialogs, Dos, SysUtils, Graphics,
     Buttons, Color,
     Consts, uDLLDef, BmpList, uString;

PROCEDURE AboutDialog(InfoAboutDialog : tInfoAboutDialog);

Implementation

CONST StartupBmpWidth  = 346;
      StartupBmpHeight = 178;

// Internetadressen
Const MaxPowerby = 7;
      cPowerByTxt : Array [1..7] of tStr30 =
         (
	  'AVENTER UG',
	  'CuL','Toolbox','OS/2 User Association Schweiz',
          'OS/2 Team Hamburg','Martin Vieregg',
          'KFZ-Werkstatt Gerald Christ');

      cPowerByLink : Array [1..7] of String =
         (
	  'https://www.aventer.biz',
	  'http://www.cul.de',
          'http://www.toolbox-mag.de',
          'http://www.os2.ch',
          'http://www.teamos2hamburg.de',
          'http://www.hypermake.com/english/home.html',
          'http://www.kfz-werkstaette.com');
{
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                                           บ
บ This section: About Dialog                                                บ
บ                                                                           บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
}

type TAboutDialog=CLASS(TDialog)
       fGBox         : tGroupbox;
       fInfo         : tInfoAboutDialog;
       fStatic       : TLabel;
       fPicture      : TImage;
       fBitmapListBox: TBitmapListBox;
       fmmContact    : tMemo;

       PROCEDURE SetupComponent;OVERRIDE;
       Constructor Create(InfoAboutDialog : tInfoAboutDialog); Virtual;

     Private
       Procedure CallUrl(iUrl : String);
       PROCEDURE PictureOnClick(Sender:TObject);
       Procedure BitmapListBoxOnItemSelect(Sender: TObject; Index: LongInt);
       Procedure evmmContactSetupShow(Sender: TObject);
     end;

Constructor TAboutDialog.Create(InfoAboutDialog : tInfoAboutDialog);

Begin
  fInfo:=InfoAboutDialog;
  inherited Create(gDLLInfo.Application.MainForm);
End;


Procedure TAboutDialog.CallUrl(iUrl : String);

var evs, ae : boolean;

Begin
  evs:=ExecViaSession;
  ae :=AsynchExec;
  ExecViaSession := true;
  AsynchExec := true;
  exec(iUrl,'');
  ExecViaSession:=evs;
  AsynchExec:=ae;
End;


procedure TAboutDialog.PictureOnClick(Sender: TObject);

Begin
  CallUrl(WDSibyl_HomepageLink);
end;


Procedure TAboutDialog.BitmapListBoxOnItemSelect(Sender: TObject; Index: LongInt);

var cou : LongWord;
    txt : tStr30;

Begin
  cou:=0;
  txt:=fBitmapListBox.Items[Index];
  repeat
    inc(cou);
  until txt=cPowerByTxt[cou];
  CallUrl(cPowerByLink[cou]);
End;

Procedure tAboutDialog.evmmContactSetupShow(Sender: TObject);

Begin
// Kontakte befuellen
// In frmMainOnSetupShow funktioniert der Property nicht.
  fmmContact.Text:=WDSibyl_Contact;
End;

procedure tAboutDialog.SetupComponent;

var bmp : tBitmap;

Begin
  Inherited SetupComponent;

  HelpContext := fInfo.HelpContext;  //hctxDialogAbout;
  Caption:=fInfo.Caption;           //LoadNLSStr(SiProductInformation);
  Width:=500;
  Height:=630;

  fGBox:=InsertGroupBoxNLS(Self,10,255,470,335,0);
  fPicture:=InsertImageName(fGBox,10,142,StartupBmpWidth,StartupBmpHeight,'SibLogo');
  fPicture.XAlign:=xaCenter;
  fPicture.ZOrder:=zoTop;
  fPicture.OnClick:=PictureOnClick;
  fPicture.Hint:='Link:' + WDSibyl_HomepageLink;

  fStatic:=InsertLabel(fGBox,10,115,300,20,fInfo.VPDTool);
  fStatic.AutoSize:=TRUE;
  fStatic.XAlign:=xaCenter;
  fStatic:=InsertLabel(fGBox,10,95,300,20,
         'Version: ' + Application.GetProgramVersionString);
  fStatic.AutoSize:=TRUE;
  fStatic.XAlign:=xaCenter;

  InsertBitBtnNLS(Self,210,10,80,30,bkOk,SOkButton,SClickHereToAccept);

End;

PROCEDURE AboutDialog(InfoAboutDialog : tInfoAboutDialog);

VAR Dialog:TAboutDialog;
                     
BEGIN
  Dialog.Create(InfoAboutDialog);
  Dialog.ShowModal;
  Dialog.Destroy;
END;

Initialization
End.

{ -- date --- --from-- -- changes ----------------------------------------------
  19-Apr-2006 WD       AboutDialog: PoweredBy-Listbox erstellt
}
