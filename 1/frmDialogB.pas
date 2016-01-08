unit frmDialogB;

interface

uses
  Forms, Classes, frmAbstractDialog, DemoInterface, Controls, StdCtrls;

type
  TDialogBForm = class(TAbstractDialog, IDialogBForm)
  end;

implementation

{$R *.dfm}

uses
  RegisterGUI;

initialization
  Gui.RegisterForm(IDialogBForm, TDialogBForm);

end.
