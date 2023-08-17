program Exercise6;

uses
  Vcl.Forms,
  customers in 'customers.pas' {frCustomers},
  main in 'main.pas' {fMain},
  products in 'products.pas' {frProducts},
  Sales in 'Sales.pas' {frSales},
  frJoinsQuery in 'frJoinsQuery.pas' {frmJoinsQuery};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfrCustomers, frCustomers);
  Application.CreateForm(TfrProducts, frProducts);
  Application.CreateForm(TfrSales, frSales);
  Application.CreateForm(TfrmJoinsQuery, frmJoinsQuery);
  Application.Run;
end.