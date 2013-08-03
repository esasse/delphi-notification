unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

const
  MsgHello: TGUID = '{F07432C4-F51A-4694-8D19-FB36479FEC28}';
  MsgClearForm: TGUID = '{ED009119-5FA4-4501-8390-92FAA9C42DE0}';
  MsgUpdateCaption: TGUID = '{3D2ECC88-8837-401C-A9D6-3BBC4F172220}';

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;

    Button3: TButton;
    LabeledEdit1: TLabeledEdit;    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, NotificationService;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  GetNotificationService.SendMessage(Self, MsgHello);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TForm2.Create(Self).Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  GetNotificationService.SendMessage(Self, MsgClearForm);
end;

procedure TForm1.LabeledEdit1Change(Sender: TObject);
begin
  GetNotificationService.SendMessage(Self, MsgUpdateCaption);
end;

end.
