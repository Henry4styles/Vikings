unit UfrmETVikings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;

    procedure FormCreate(Sender: TObject);


  private
    Player: TPanel;
  public
    { Public-Deklarationen }
  end;
  var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

    Player:= TPanel.Create(self);
    Player.Parent:= form1;
    Player.Top:= 450;
    Player.Left:=170;
    Player.Width:=20;
    Player.Height:=60
end;





end.
