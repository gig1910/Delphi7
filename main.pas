unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    edit1: TEdit;
    btn1: TButton;
    timer1: TTimer;

    procedure btn1Click(Sender: TObject);
    procedure timer1Timer(Sender: TObject);
  private
    { Private declarations }
    counter: Integer;

    procedure startTimer();
    procedure stopTimer();

  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.startTimer();
begin
    btn1.Caption := 'Stop';
    edit1.ReadOnly := True;
    counter := abs(counter);
    timer1.Enabled := True;
end;

procedure TForm1.stopTimer();
begin
    btn1.Caption := 'Run';
    timer1.Enabled := False;
    edit1.ReadOnly := False;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if btn1.Caption <> 'Run' then
    stopTimer()
  else
    if TryStrToInt(Edit1.Text, counter) then
      startTimer()
    else
      ShowMessage('You write is a not a number');
end;

procedure TForm1.timer1Timer(Sender: TObject);
begin
  counter := counter - 1;
  if counter <= 0 then
  begin
    counter := 0;
    stopTimer();
  end;

  edit1.Text := IntToStr(counter);
end;

end.
