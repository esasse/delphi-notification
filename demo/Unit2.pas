unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Hello(Sender: TObject);
    procedure ClearForm(Sender: TObject);
    procedure UpdateCaption(Sender: TObject);
  end;

implementation

uses
  Unit1, NotificationService;

{$R *.dfm}

procedure TForm2.UpdateCaption(Sender: TObject);
begin
  Caption := (Sender as TForm1).LabeledEdit1.Text;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  GetNotificationService.UnSubscribe(ClearForm);
  GetNotificationService.UnSubscribe(UpdateCaption);
  GetNotificationService.UnSubscribe(Hello);
end;

procedure TForm2.ClearForm(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm2.Hello(Sender: TObject);
begin
  Memo1.Lines.Add(DateTimeToStr(Now) + ' - Hello received')
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  GetNotificationService.Subscribe(Hello, MsgHello);
  GetNotificationService.Subscribe(ClearForm, MsgClearForm);
  GetNotificationService.Subscribe(UpdateCaption, MsgUpdateCaption);
end;

end.
