unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    LVisor: TLabel;
    Timer: TTimer;
    bInicia: TButton;
    bPara: TButton;
    bReinicia: TButton;
    bFim: TButton;
    bLimpar: TButton;
    lHist: TListBox;
    lSoma: TLabel;
    procedure TimerTimer(Sender: TObject);
    procedure bIniciaClick(Sender: TObject);
    procedure bParaClick(Sender: TObject);
    procedure bReiniciaClick(Sender: TObject);
    procedure bFimClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  ms, sg, mn : integer;
  v1 : integer;
  v2 : integer;

implementation

{$R *.dfm}

procedure TForm3.bFimClick(Sender: TObject);
begin
lHist.Items.Add(LVisor.Caption);
end;

procedure TForm3.bIniciaClick(Sender: TObject);
begin
 timer.Enabled := true;
 LVisor.Caption := (LVisor.Caption) ;
end;

procedure TForm3.bLimparClick(Sender: TObject);
begin
 lHist.Clear;
end;

procedure TForm3.bParaClick(Sender: TObject);
begin
 timer.Enabled := false;
end;

procedure TForm3.bReiniciaClick(Sender: TObject);
begin
  timer.Enabled := false;
  ms := 0;
  sg := 0;
  mn := 0;
  LVisor.Caption := ('00:00:00') ;
end;
procedure TForm3.TimerTimer(Sender: TObject);
begin
inc(ms);
 if sg = 60 then
  begin
    inc(mn);
    sg := 0
  end;
 if ms = 99 then
  begin
    inc (sg);
    ms := 0
  end;

 LVisor.caption := format ('%.2d:%.2d:%.2d',[mn,sg,ms]);

end;


end.
