program Exercise7;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  customers in 'customers.pas' {frCustomers},
  Products in 'Products.pas' {frProducts},
  Sales in 'Sales.pas' {frSales},
  joinsQuery in 'joinsQuery.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrCustomers, frCustomers);
  Application.CreateForm(TfrProducts, frProducts);
  Application.CreateForm(TfrSales, frSales);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.