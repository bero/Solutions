unit frmDialog;

interface

uses
  Forms, Classes, Controls, StdCtrls, DemoInterface;

type
  TDialogForm = class(TForm, IDialogForm)
    btnOpenA: TButton;
    btnOpenB: TButton;
    procedure btnOpenAClick(Sender: TObject);
    procedure btnOpenBClick(Sender: TObject);
  public
    function Memo: String;
    procedure ShowNonModal;
  end;

implementation

uses
  RegisterGUI;

{$R *.dfm}

procedure TDialogForm.btnOpenAClick(Sender: TObject);
var
  vDialog: IDialogAForm;
begin
  vDialog := GUI as IDialogAForm;
  vDialog.OnGetMemoText := Memo;
  vDialog.Execute('Hi A!');
end;

procedure TDialogForm.btnOpenBClick(Sender: TObject);
var
  vDialog: IDialogBForm;
begin
  vDialog := GUI as IDialogBForm;
  vDialog.OnGetMemoText := Memo;
  vDialog.Execute('Hi B!');
end;

function TDialogForm.Memo: String;
begin
  Result := 'Called from Dialog ' + #10#13;
end;

procedure TDialogForm.ShowNonModal;
begin
  Show;
end;

initialization
  Gui.RegisterForm(IDialogForm, TDialogForm);

end.
