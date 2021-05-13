unit splashscreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TSplashS = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashS: TSplashS;

implementation
uses giris_ekrani;

{$R *.dfm}


procedure TSplashS.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position := ProgressBar1.Position + 2;
if (ProgressBar1.Position = 100) then
begin
  timer1.Enabled := false;
  SplashS.Visible := false;
  giris.show;

end;


end;

end.
