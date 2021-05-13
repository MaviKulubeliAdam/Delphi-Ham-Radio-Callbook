unit kullanici;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons;

type
  Tkullanýcý = class(TForm)
    tablo: TADOTable;
    DBGrid1: TDBGrid;
    tabloNo: TAutoIncField;
    tabloÝl: TWideStringField;
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
  kullanýcý: Tkullanýcý;

implementation
        uses giris_ekrani;
{$R *.dfm}


procedure Tkullanýcý.Button1Exit(Sender: TObject);
begin
kullanýcý.Destroy;
end;

procedure Tkullanýcý.FormCreate(Sender: TObject);
begin
tablo.Open;
end;

procedure Tkullanýcý.SpeedButton1Click(Sender: TObject);
begin
giris.Visible := True;
kullanýcý.Visible := False;
end;

end.
