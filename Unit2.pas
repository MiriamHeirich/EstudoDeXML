unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    btnProcurar: TButton;
    Button1: TButton;
    procedure btnProcurarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnProcurarClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Memo1.Lines.Count - 1 do
  begin
    if pos('cte}email', Memo1.Lines[i]) > 0 then
    ShowMessage( 'Email do Destinat?rio Inv?lido.O mail deve seguir o padr?o "teste@teste.com" ou "teste@teste.com.br')
  else if
   pos('cte}xNome', Memo1.Lines[i]) > 0 then
    ShowMessage( 'Raz?o Social do Destinat?rio excede o m?ximo permitido de 60 caracteres')
 else  if
   pos('cte}infDoc', Memo1.Lines[i]) > 0 then
    ShowMessage( 'CT-e est? sem Nota fiscal ou outro documento vinculado na Parte 3');end; }
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile('D:\Arquivos do Usuario\Desktop\XML\ErrosXSD\RetornoDeErros.txt');
end;

end.
