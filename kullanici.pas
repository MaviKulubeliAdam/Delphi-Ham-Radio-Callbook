unit kullanici;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons;

type
  Tkullan�c� = class(TForm)
    tablo: TADOTable;
    DBGrid1: TDBGrid;
    tabloNo: TAutoIncField;
    tablo�l: TWideStringField;
    tabloG��: TWideStringField;
    tabloYer: TWideStringField;
    tabloY�kseklik: TWideStringField;
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
  kullan�c�: Tkullan�c�;

implementation
        uses giris_ekrani;
{$R *.dfm}


procedure Tkullan�c�.Button1Exit(Sender: TObject);
begin
kullan�c�.Destroy;
end;

procedure Tkullan�c�.FormCreate(Sender: TObject);
begin
tablo.Open;
end;

procedure Tkullan�c�.SpeedButton1Click(Sender: TObject);
begin
giris.Visible := True;
kullan�c�.Visible := False;
end;

end.
