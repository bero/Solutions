program Solution1;

uses
  Forms,
  frmMain in 'frmMain.pas' {Main},
  frmAbstractDialog in 'frmAbstractDialog.pas' {AbstractDialog},
  frmDialogB in 'frmDialogB.pas' {DialogBForm},
  frmDialogA in 'frmDialogA.pas' {DialogAForm},
  frmDialog in 'frmDialog.pas' {DialogForm},
  DemoInterface in 'DemoInterface.pas',
  RegisterGUI in 'RegisterGUI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
