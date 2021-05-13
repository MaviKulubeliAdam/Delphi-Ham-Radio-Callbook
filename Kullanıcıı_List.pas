unit Kullanýcýý_List;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TKullanýcý_Listesi = class(TForm)
    DBGrid1: TDBGrid;
    DBImage1: TDBImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1AdSoyad: TWideStringField;
    ADOTable1KullanýcýAdý: TWideStringField;
    ADOTable1Þifre: TWideStringField;
    ADOTable1Resim: TBlobField;
    ADOTable1Yetki: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kullanýcý_Listesi: TKullanýcý_Listesi;

implementation
              uses Yönetici_Menü;
{$R *.dfm}

procedure TKullanýcý_Listesi.Button2Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TKullanýcý_Listesi.SpeedButton1Click(Sender: TObject);
begin
Kullanýcý_Listesi.Visible:=false;
  Admin_Paneli.Show;
end;

procedure TKullanýcý_Listesi.SpeedButton2Click(Sender: TObject);
begin
Adotable1.Prior;
end;

procedure TKullanýcý_Listesi.SpeedButton3Click(Sender: TObject);
begin
ADOTable1.Next;
end;

procedure TKullanýcý_Listesi.SpeedButton8Click(Sender: TObject);
begin
ADOTable1.Delete;
ADOTable1.Next;
end;

procedure TKullanýcý_Listesi.SpeedButton4Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TKullanýcý_Listesi.SpeedButton6Click(Sender: TObject);
begin
ADOTable1.Edit;
end;

end.
