unit Kayýt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TKayit = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBImage1: TDBImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1AdSoyad: TWideStringField;
    ADOTable1KullanýcýAdý: TWideStringField;
    ADOTable1Þifre: TWideStringField;
    ADOTable1Resim: TBlobField;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kayit: TKayit;

implementation
uses giris_ekrani;

{$R *.dfm}

procedure TKayit.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
ShowMessage('Kayýt Baþarýlý');
Kayit.Visible:=false;
giris.show;
end;


procedure TKayit.FormCreate(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TKayit.SpeedButton1Click(Sender: TObject);
begin
Kayit.Visible:=false;
  giris.Show;
end;

end.
