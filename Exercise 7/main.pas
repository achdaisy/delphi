unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
customers, Sales,  Products;

var
Customers: TfrCustomers;

procedure TForm1.Button1Click(Sender: TObject);
begin
Customers := TfrCustomers.Create(nil); // create a new instance of the form
Customers.Show;
end;

  var
Products: TfrProducts;
procedure TForm1.Button2Click(Sender: TObject);
begin
   Products := TfrProducts.Create(nil); // create a new instance of the form
Products.Show;
end;

 var
  Sales: TfrSales;
procedure TForm1.Button3Click(Sender: TObject);
begin
   Sales := TfrSales.Create(nil); // create a new instance of the form
   Sales.Show;
end;

end.
