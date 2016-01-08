unit DemoInterface;

interface

type
  TGetMemoText = function(): String of object;

  IDialogAbstract = interface
  ['{F16163F6-0242-4D81-854F-04E6433049C0}']
    procedure Execute(aMsg: string);
    function GetGetMemoText: TGetMemoText;
    procedure SetGetMemoText(const Value: TGetMemoText);
    property OnGetMemoText: TGetMemoText read GetGetMemoText write SetGetMemoText;
  end;

  IDialogAForm = interface(IDialogAbstract)
    ['{11DED9B6-7736-4BAC-BDDD-63FD7575380B}']
 end;

 IDialogBForm = interface(IDialogAbstract)
   ['{DBFBAE71-8BE9-4DAD-A251-204FC11817E8}']
 end;

 IDialogForm = interface
   ['{06252FB0-7803-4566-9619-F7394D183773}']
   procedure ShowNonModal;
 end;


implementation

end.
