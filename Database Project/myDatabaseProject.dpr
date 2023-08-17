program myDatabaseProject;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  Products in 'Products.pas' {frmProducts},
  Customers in 'Customers.pas' {frmCustomers};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmProducts, frmProducts);
  Application.CreateForm(TfrmCustomers, frmCustomers);
  Application.Run;
end.
