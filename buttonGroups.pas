unit buttonGroups;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
label1.font.name := 'Algerian';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
label1.font.name := 'Georgia';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
label1.font.name := 'Courier New';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
label1.Color:= clWhite;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
label1.font.color := clmaroon;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
label1.font.color := clblue;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
label1.font.color := clgreen;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
label1.font.size := 13;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
label1.font.size := 20;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
label1.font.size := 26;
end;

end.
