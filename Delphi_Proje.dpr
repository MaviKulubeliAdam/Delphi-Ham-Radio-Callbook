program Delphi_Proje;

uses
  Vcl.Forms,
  Admin_Düzenleme_Paneli in 'Admin_Düzenleme_Paneli.pas' {Admin_Kayýt_Konrol_Paneli},
  giris_ekrani in 'giris_ekrani.pas' {giris},
  kullanici in 'kullanici.pas' {kullanýcý},
  splashscreen in 'splashscreen.pas' {SplashS},
  Kayýt in 'Kayýt.pas' {Kayit},
  admin_giris_paneli in 'admin_giris_paneli.pas' {Admin_Giris},
  Yönetici_Menü in 'Yönetici_Menü.pas' {Admin_Paneli},
  Kullanýcýý_List in 'Kullanýcýý_List.pas' {Kullanýcý_Listesi},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TSplashS, SplashS);
  Application.CreateForm(Tkullanýcý, kullanýcý);
  Application.CreateForm(TAdmin_Kayýt_Konrol_Paneli, Admin_Kayýt_Konrol_Paneli);
  Application.CreateForm(Tgiris, giris);
  Application.CreateForm(TKayit, Kayit);
  Application.CreateForm(TAdmin_Giris, Admin_Giris);
  Application.CreateForm(TAdmin_Paneli, Admin_Paneli);
  Application.CreateForm(TKullanýcý_Listesi, Kullanýcý_Listesi);
  Application.Run;
end.
