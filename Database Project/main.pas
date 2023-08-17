unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Products, Customers;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Data1: TMenuItem;
    Product1: TMenuItem;
    Product2: TMenuItem;
    procedure Product1Click(Sender: TObject);
    procedure Product2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Product1Click(Sender: TObject);
var
  Products: TfrmProducts;
begin
  Products := TfrmProducts.Create(Application);
  Products.ShowModal;
  Products.Free;
end;


procedure TForm1.Product2Click(Sender: TObject);
var
  Customers: TfrmCustomers;
begin
   Customers := TfrmCustomers.Create(Application);
   Customers.ShowModal;
   Customers.Free;
end;

end.
