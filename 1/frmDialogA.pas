unit frmDialogA;

interface

uses
  Forms, Classes, frmAbstractDialog, DemoInterface, Controls, StdCtrls;

type
  TDialogAForm = class(TAbstractDialog, IDialogAForm)
  end;

implementation

{$R *.dfm}

uses
  RegisterGUI;

initialization
  Gui.RegisterForm(IDialogAForm, TDialogAForm);

end.
