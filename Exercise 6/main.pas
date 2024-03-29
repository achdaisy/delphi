unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Menus, Vcl.Samples.Spin, System.ImageList, Vcl.ImgList,
  VCLTee.TeCanvas, Vcl.CategoryButtons;

type
  TfMain = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    FormsTables1: TMenuItem;
    Queries1: TMenuItem;
    Customers1: TMenuItem;
    Products1: TMenuItem;
    Sales1: TMenuItem;
    JoinsQuery1: TMenuItem;
    Panel1: TPanel;
    ImageList1: TImageList;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Customers1Click(Sender: TObject);
    procedure Products1Click(Sender: TObject);
    procedure Sales1Click(Sender: TObject);
    procedure JoinsQuery1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

 uses
 products,
 Customers,
 Sales,
 frJoinsQuery;


var
 Customers: TfrCustomers;

procedure TfMain.Button1Click(Sender: TObject);
begin
   Customers := TfrCustomers.Create(Application);
  Customers.Show;
end;

 var
   Products: TfrProducts;
procedure TfMain.Button2Click(Sender: TObject);
begin
   Products := TfrProducts.Create(Application);
  Products.Show;
end;

var
   Sales: TfrSales;
procedure TfMain.Button3Click(Sender: TObject);
begin
   Sales := TfrSales.Create(Application);
  Sales.Show;
end;

procedure TfMain.Customers1Click(Sender: TObject);
begin
  Customers := TfrCustomers.Create(Application);
  Customers.Show;
end;

  
var
   joinsQuery: TfrmJoinsQuery;

procedure TfMain.JoinsQuery1Click(Sender: TObject);
begin
    joinsQuery := TfrmJoinsQuery.Create(Application);
  joinsQuery.Show;
end;


procedure TfMain.Products1Click(Sender: TObject);
begin
  Products := TfrProducts.Create(Application);
  Products.Show;
end;

procedure TfMain.RadioButton1Click(Sender: TObject);
begin
     Customers := TfrCustomers.Create(Application);
  Customers.Show;
end;



procedure TfMain.RadioButton2Click(Sender: TObject);
begin
    Products := TfrProducts.Create(Application);
  Products.Show;
end;





procedure TfMain.RadioButton4Click(Sender: TObject);
begin
    joinsQuery := TfrmJoinsQuery.Create(Application);
  joinsQuery.Show;
end;



procedure TfMain.Sales1Click(Sender: TObject);
begin
    Sales := TfrSales.Create(Application);
  Sales.Show;
end;

end.

