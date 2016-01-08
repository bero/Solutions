unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMain = class(TForm)
    btnOpenGeneral: TButton;
    btnOpenA: TButton;
    btnOpenB: TButton;
    procedure btnOpenAClick(Sender: TObject);
    procedure btnOpenGeneralClick(Sender: TObject);
    procedure btnOpenBClick(Sender: TObject);
  public
    function Memo: String;
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

uses
  frmDialog,
  frmdialogA,
  frmDialogB,
  RegisterGUI,
  DemoInterface;

procedure TMain.btnOpenGeneralClick(Sender: TObject);
begin
  (GUI as IDialogForm).ShowNonModal;
end;

function TMain.Memo: String;
begin
  Result := 'Called from Main ' + #10#13;
end;

procedure TMain.btnOpenAClick(Sender: TObject);
var
  vDialog: IDialogAForm;
begin
  vDialog := GUI as IDialogAForm;
  vDialog.OnGetMemoText := Memo;
  vDialog.Execute('Hi A!');
end;

procedure TMain.btnOpenBClick(Sender: TObject);
var
  vDialog: IDialogBForm;
begin
  vDialog := GUI as IDialogBForm;
  vDialog.OnGetMemoText := Memo;
  vDialog.Execute('Hi B!');
end;

end.
