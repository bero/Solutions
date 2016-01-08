unit frmAbstractDialog;

interface

uses
  Forms, Classes, Controls, StdCtrls, DemoInterface;

type
  TAbstractDialog = class(TForm, IDialogAbstract)
    memSomeText: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fGetMemoText: TGetMemoText;
  protected
    function MemoText: string; virtual;
    function GetGetMemoText: TGetMemoText;
    procedure SetGetMemoText(const Value: TGetMemoText);
  public
    procedure Execute(aMsg: string); virtual;
    property OnGetMemoText: TGetMemoText read GetGetMemoText write SetGetMemoText;
  end;

implementation

{$R *.dfm}

uses
  RegisterGui;

procedure TAbstractDialog.Execute(aMsg: string);
begin
  if Assigned(OnGetMemoText) then
    memSomeText.Text := OnGetMemoText + aMsg;

  Show;
end;

procedure TAbstractDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TAbstractDialog.GetGetMemoText: TGetMemoText;
begin
  Result := fGetMemoText;
end;

function TAbstractDialog.MemoText: string;
begin
  Result := 'Called from Dialog ';
end;

procedure TAbstractDialog.SetGetMemoText(const Value: TGetMemoText);
begin
  fGetMemoText := Value;
end;

initialization
  Gui.RegisterForm(IDialogAbstract, TAbstractDialog);

end.
