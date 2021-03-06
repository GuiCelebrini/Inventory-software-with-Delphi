unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TFormMain = class(TForm)
    StaticText1: TStaticText;
    Panel1: TPanel;
    StaticText2: TStaticText;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Estoque1: TMenuItem;
    Relatrio1: TMenuItem;
    Sair1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Cidades1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Entrada1: TMenuItem;
    Sada1: TMenuItem;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Timer: TTimer;
    Image1: TImage;
    procedure TimerTimer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses UAbout;

procedure TFormMain.Button3Click(Sender: TObject);

  var about: TfrmAbout;

begin
  about:=TfrmAbout.create(self);
  about.showModal;
end;

procedure TFormMain.TimerTimer(Sender: TObject);
begin
    StatusBar1.panels[2].Text:= 'Hora: ' + timetostr(time);
    StatusBar1.panels[3].Text:= 'Data: ' + datetostr(date);
end;

end.
