unit admin_giris_paneli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TAdmin_Giris = class(TForm)
    k_adi: TEdit;
    sifre: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Admin_Giris: TAdmin_Giris;

implementation
uses giris_ekrani, Y�netici_Men�;
{$R *.dfm}

procedure TAdmin_Giris.Button1Click(Sender: TObject);
begin
begin
ADOQuery1.Close;
ADOQuery1.SQL.Text:='select * from uyeler where `Kullan�c� Ad�`='+#39+k_adi.Text+#39+'and �ifre='+#39+sifre.Text+#39+ 'and Yetki='+#39+'1'+#39;
ADOQuery1.Open;

if ADOQuery1.RecordCount > 0 then
begin

  ShowMessage('Giri� Ba�ar�l�, '+#39+k_adi.Text+#39+' Ho�geldiniz');
  Admin_Giris.Visible:=false;
  Admin_Paneli.Show;

end else
begin
ShowMessage('Kullan�c� Ad�/�ifre Hatal�');
end;
end;
end;

procedure TAdmin_Giris.Button2Click(Sender: TObject);
begin
     Visible := False;
  try
    giris.ShowModal;
  finally
    Visible := True;
  end;
end;


end.
