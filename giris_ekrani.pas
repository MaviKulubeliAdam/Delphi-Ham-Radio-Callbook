unit giris_ekrani;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Data.DB, Data.Win.ADODB;

type
  Tgiris = class(TForm)
    baslik: TLabel;
    Image1: TImage;
    k_adi_label: TLabel;
    sifre_label: TLabel;
    Button1: TButton;
    Button2: TButton;
    k_adi_text: TEdit;
    sifre_text: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Admin_panel: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Admin_panelClick(Sender: TObject);
    procedure Admin_panelExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  giris: Tgiris;



implementation

uses Kayýt, splashscreen, Admin_Düzenleme_Paneli, kullanici, admin_giris_paneli;
{$R *.dfm}

procedure Tgiris.Admin_panelClick(Sender: TObject);
begin
giris.Visible := False;
Admin_Giris.Visible := True;
end;

procedure Tgiris.Admin_panelExit(Sender: TObject);
begin
giris.Destroy;
end;

procedure Tgiris.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Text:='select * from uyeler where `Kullanýcý Adý`='+#39+k_adi_text.Text+#39+'and Þifre='+#39+sifre_text.Text+#39;
ADOQuery1.Open;

if ADOQuery1.RecordCount > 0 then
begin

  ShowMessage('Giriþ Baþarýlý, '+#39+k_adi_text.Text+#39+' Hoþgeldiniz.');
  giris.Visible := False;
  kullanýcý.Show;

end else
begin
ShowMessage('Hatalý Kullanýcý Adý / Þifre');
end;
end;


procedure Tgiris.Button2Click(Sender: TObject);
begin
 Visible := False;
  try
    Kayit.ShowModal;
  finally
    Visible := True;
  end;
end;

procedure Tgiris.FormClose(Sender: TObject; var Action: TCloseAction);
begin
SplashS.Close;
end;


END.
