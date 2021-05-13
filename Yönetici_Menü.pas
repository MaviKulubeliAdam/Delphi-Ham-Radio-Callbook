unit Y�netici_Men�;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TAdmin_Paneli = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Admin_Paneli: TAdmin_Paneli;

implementation
             uses Admin_D�zenleme_Paneli, giris_ekrani, Kullan�c��_List;
{$R *.dfm}

procedure TAdmin_Paneli.Button1Click(Sender: TObject);
begin
Admin_Paneli.Visible:=false;
  Admin_Kay�t_Konrol_Paneli.Show;
end;

procedure TAdmin_Paneli.Button2Click(Sender: TObject);
begin
Admin_Paneli.Visible:=false;
  Kullan�c�_Listesi.Show;
end;


procedure TAdmin_Paneli.SpeedButton1Click(Sender: TObject);
begin
Admin_Paneli.Visible := False;
giris.Visible := True;

end;


end.
