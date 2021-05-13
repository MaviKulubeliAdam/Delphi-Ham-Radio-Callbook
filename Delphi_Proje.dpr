program Delphi_Proje;

uses
  Vcl.Forms,
  Admin_D�zenleme_Paneli in 'Admin_D�zenleme_Paneli.pas' {Admin_Kay�t_Konrol_Paneli},
  giris_ekrani in 'giris_ekrani.pas' {giris},
  kullanici in 'kullanici.pas' {kullan�c�},
  splashscreen in 'splashscreen.pas' {SplashS},
  Kay�t in 'Kay�t.pas' {Kayit},
  admin_giris_paneli in 'admin_giris_paneli.pas' {Admin_Giris},
  Y�netici_Men� in 'Y�netici_Men�.pas' {Admin_Paneli},
  Kullan�c��_List in 'Kullan�c��_List.pas' {Kullan�c�_Listesi},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TSplashS, SplashS);
  Application.CreateForm(Tkullan�c�, kullan�c�);
  Application.CreateForm(TAdmin_Kay�t_Konrol_Paneli, Admin_Kay�t_Konrol_Paneli);
  Application.CreateForm(Tgiris, giris);
  Application.CreateForm(TKayit, Kayit);
  Application.CreateForm(TAdmin_Giris, Admin_Giris);
  Application.CreateForm(TAdmin_Paneli, Admin_Paneli);
  Application.CreateForm(TKullan�c�_Listesi, Kullan�c�_Listesi);
  Application.Run;
end.
