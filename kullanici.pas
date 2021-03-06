unit kullanici;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons;

type
  Tkullanıcı = class(TForm)
    tablo: TADOTable;
    DBGrid1: TDBGrid;
    tabloNo: TAutoIncField;
    tabloİl: TWideStringField;
    tabloGüç: TWideStringField;
    tabloYer: TWideStringField;
    tabloYükseklik: TWideStringField;
    tabloBand: TWideStringField;
    tabloFrekans: TWideStringField;
    tabloTon: TWideStringField;
    tabloSquelch: TWideStringField;
    DataSource1: TDataSource;
    baglanti: TADOConnection;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kullanıcı: Tkullanıcı;

implementation
        uses giris_ekrani;
{$R *.dfm}


procedure Tkullanıcı.Button1Exit(Sender: TObject);
begin
kullanıcı.Destroy;
end;

procedure Tkullanıcı.FormCreate(Sender: TObject);
begin
tablo.Open;
end;

procedure Tkullanıcı.SpeedButton1Click(Sender: TObject);
begin
giris.Visible := True;
kullanıcı.Visible := False;
end;

end.
