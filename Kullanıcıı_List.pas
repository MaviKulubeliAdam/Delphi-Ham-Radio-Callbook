unit Kullan�c��_List;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TKullan�c�_Listesi = class(TForm)
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
    ADOTable1Kullan�c�Ad�: TWideStringField;
    ADOTable1�ifre: TWideStringField;
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
  Kullan�c�_Listesi: TKullan�c�_Listesi;

implementation
              uses Y�netici_Men�;
{$R *.dfm}

procedure TKullan�c�_Listesi.Button2Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TKullan�c�_Listesi.SpeedButton1Click(Sender: TObject);
begin
Kullan�c�_Listesi.Visible:=false;
  Admin_Paneli.Show;
end;

procedure TKullan�c�_Listesi.SpeedButton2Click(Sender: TObject);
begin
Adotable1.Prior;
end;

procedure TKullan�c�_Listesi.SpeedButton3Click(Sender: TObject);
begin
ADOTable1.Next;
end;

procedure TKullan�c�_Listesi.SpeedButton8Click(Sender: TObject);
begin
ADOTable1.Delete;
ADOTable1.Next;
end;

procedure TKullan�c�_Listesi.SpeedButton4Click(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TKullan�c�_Listesi.SpeedButton6Click(Sender: TObject);
begin
ADOTable1.Edit;
end;

end.
