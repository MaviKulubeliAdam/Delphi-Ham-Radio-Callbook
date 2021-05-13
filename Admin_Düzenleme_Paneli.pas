unit Admin_Düzenleme_Paneli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Buttons;

type
  TAdmin_Kayýt_Konrol_Paneli = class(TForm)
    Liste: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ListeNo: TAutoIncField;
    ListeÝl: TWideStringField;
    ListeGüç: TWideStringField;
    ListeYer: TWideStringField;
    ListeYükseklik: TWideStringField;
    ListeBand: TWideStringField;
    ListeFrekans: TWideStringField;
    ListeTon: TWideStringField;
    ListeSquelch: TWideStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Admin_Kayýt_Konrol_Paneli: TAdmin_Kayýt_Konrol_Paneli;

implementation
            uses Yönetici_Menü;
{$R *.dfm}

procedure TAdmin_Kayýt_Konrol_Paneli.FormCreate(Sender: TObject);
begin
liste.Open;
end;


procedure TAdmin_Kayýt_Konrol_Paneli.SpeedButton1Click(Sender: TObject);
begin
  Admin_Kayýt_Konrol_Paneli.Visible:=false;
  Admin_Paneli.Show;
end;

procedure TAdmin_Kayýt_Konrol_Paneli.SpeedButton2Click(Sender: TObject);
begin
liste.Append;
end;

procedure TAdmin_Kayýt_Konrol_Paneli.SpeedButton3Click(Sender: TObject);
begin
liste.Delete;
liste.Next;
end;

procedure TAdmin_Kayýt_Konrol_Paneli.SpeedButton4Click(Sender: TObject);
begin
liste.Append;
end;

procedure TAdmin_Kayýt_Konrol_Paneli.SpeedButton5Click(Sender: TObject);
begin
liste.Edit;
end;

end.
