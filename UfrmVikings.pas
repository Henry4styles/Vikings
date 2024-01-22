unit UfrmVikings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DateUtils;

type
  TGame = class(TForm)
    Player: TShape;
    enemy1: TShape;
    enemy2: TShape;
    enemy3: TShape;
    enemy4: TShape;
    enemy5: TShape;
    Panel1: TPanel;
    enemy6: TShape;
    Timer1: TTimer;
    procedure KeyDownExec;
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure enemy1fallexecute(starttime: tdatetime);
    procedure enemy2fallexecute(starttime: tdatetime);
    procedure enemy3fallexecute(starttime: tdatetime);
    procedure enemy4fallexecute(starttime: tdatetime);
    procedure enemy5fallexecute(starttime: tdatetime);
    procedure enemy6fallexecute(starttime: tdatetime);

  private
    enemy1fall, enemy2fall, enemy3fall, enemy4fall,enemy5fall ,enemy6fall: boolean;
    one, two, three, four, five, six: tdatetime;
    enemy1starttime,enemy2starttime,enemy3starttime,enemy4starttime,enemy5starttime,enemy6starttime: tdatetime;
  public
    { Public-Deklarationen }
  end;

var
  Game: TGame;

implementation
procedure Delay(ms : Integer);
var
  T: Integer;
begin
    T := GetTickCount + ms;
    while GetTickCount < T do
        Application.ProcessMessages;
end;

{$R *.dfm}

procedure TGame.enemy1fallexecute(starttime: tdatetime);
begin
    if enemy1.Top > 550 then
    begin
        enemy1fall := false;

    end;

    if (now > starttime) and enemy1fall = true then
    begin

        enemy1.Top := enemy1.Top + 5;
        game.Update;
    end;

end;

procedure TGame.enemy2fallexecute(starttime: tdatetime);
begin
    begin
    if enemy2.Top > 550 then
    begin
        enemy2fall := false;

    end;

    if (now > starttime) and enemy2fall = true then
    begin

        enemy2.Top := enemy2.Top + 5;
        game.Update;
    end;

end;
end;

procedure TGame.enemy3fallexecute(starttime: tdatetime);
begin
    begin
    if enemy3.Top > 550 then
    begin
        enemy3fall := false;

    end;

    if (now > starttime) and enemy3fall = true then
    begin

        enemy3.Top := enemy3.Top + 5;
        game.Update;
    end;

end;
end;

procedure TGame.enemy4fallexecute(starttime: tdatetime);
begin
    begin
    if enemy4.Top > 550 then
    begin
        enemy4fall := false;

    end;

    if (now > starttime) and enemy4fall = true then
    begin

        enemy4.Top := enemy4.Top + 5;
        game.Update;
    end;

end;
end;

procedure TGame.enemy5fallexecute(starttime: tdatetime);
begin
    begin
    if enemy5.Top > 550 then
    begin
        enemy5fall := false;

    end;

    if (now > starttime) and enemy5fall = true then
    begin

        enemy5.Top := enemy5.Top + 5;
        game.Update;
    end;

end;
end;

procedure TGame.enemy6fallexecute(starttime: tdatetime);
begin
    begin
    if enemy6.Top > 550 then
    begin
        enemy6fall := false;

    end;

    if (now > starttime) and enemy6fall = true then
    begin

        enemy6.Top := enemy6.Top + 5;
        game.Update;
    end;

end;
end;

procedure TGame.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    KeyDownExec;
end;


procedure TGame.KeyDownExec;
var exec1: boolean;
begin

    exec1:= false;
    delay(1);
    if (GetAsyncKeystate(VK_Left))<>0  then
        if Player.Left >= 3 then
        begin
            Player.Left:= Player.Left -5;

            exec1:= true;
        end;

    if (GetAsyncKeystate(VK_Right))<>0 then
        if Player.Left <= 357 then
    begin
      Player.Left:= Player.Left +5;

      exec1:= true;
    end;
    if (GetAsyncKeystate(VK_UP))<>0 then
        if Player.top >= 4 then
    begin
      Player.Top:= Player.Top -5;


      exec1:= true;

    end;
    if (GetAsyncKeystate(VK_down))<>0 then
        if Player.Top <= 505 then
    begin
      Player.Top:= Player.Top +5;

      exec1:= true;

    end;
    Game.Update;
    if exec1 then
        KeyDownExec;
end;



procedure TGame.Timer1Timer(Sender: TObject);
var
    Overlay: TRect;


begin
    if IntersectRect(Overlay ,enemy1.BoundsRect,player.BoundsRect) or IntersectRect(Overlay ,enemy2.BoundsRect,player.BoundsRect) or IntersectRect(Overlay ,enemy3.BoundsRect,player.BoundsRect) or IntersectRect(Overlay ,enemy4.BoundsRect,player.BoundsRect) or IntersectRect(Overlay ,enemy5.BoundsRect,player.BoundsRect) or IntersectRect(Overlay ,enemy6.BoundsRect,player.BoundsRect) then
    begin
        Timer1.Enabled := false;
        ShowMessage('Game Over');
    end;


    if not enemy1fall then
    begin
        enemy1.Top := -40;
        enemy1fall := true;
        one := now;
        one := IncSecond(one, random(5));//enemy1starttime + (random(6).ToExtended);
        enemy1starttime := now;

        enemy1fallexecute(one);
    end else
    begin
        enemy1fallexecute(one);

    end;
    if not enemy2fall then
    begin
        enemy2.Top := -40;
        enemy2fall := true;
        two := now;
        two := IncSecond(two, random(5));//enemy1starttime + (random(6).ToExtended);
        enemy2starttime := now;

        enemy2fallexecute(two);
    end else
    begin
        enemy2fallexecute(two);

    end;


    if not enemy3fall then
    begin
        enemy3.Top := -40;
        enemy3fall := true;
        three := now;
        three := IncSecond(three, random(5));//enemy1starttime + (random(6).ToExtended);
        enemy3starttime := now;

        enemy3fallexecute(three);
    end else
    begin
        enemy3fallexecute(three);

    end;

    if not enemy4fall then
    begin
        enemy4.Top := -40;
        enemy4fall := true;
        four := now;
        four := IncSecond(four, random(3));//enemy1starttime + (random(6).ToExtended);
        enemy4starttime := now;

        enemy4fallexecute(four);
    end else
    begin
        enemy4fallexecute(four);

    end;


    if not enemy5fall then
    begin
        enemy5.Top := -40;
        enemy5fall := true;
        five := now;
        five := IncSecond(five, random(3));//enemy1starttime + (random(6).ToExtended);
        enemy5starttime := now;

        enemy5fallexecute(five);
    end else
    begin
        enemy5fallexecute(five);

    end;
    if not enemy6fall then
    begin
        enemy6.Top := -50;
        enemy6fall := true;
        six := now;
        six := IncSecond(six, random(3));//enemy1starttime + (random(6).ToExtended);
        enemy6starttime := now;

        enemy6fallexecute(six);
    end else
    begin
        enemy6fallexecute(six);

    end;

    KeyDownExec;
    game.Update;

end;

end.
