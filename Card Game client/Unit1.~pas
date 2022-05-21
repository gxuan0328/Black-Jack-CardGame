unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, IdUDPServer, IdBaseComponent, IdComponent, IdUDPBase,
  IdUDPClient, Card, StdCtrls, IdSocketHandle;

type
  
  TPoke = record
      val, clr: integer;
      back: boolean;
  end;

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Setting1: TMenuItem;
    NewGame1: TMenuItem;
    UDPC: TIdUDPClient;
    UDPS: TIdUDPServer;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Card2: TCard;
    Card3: TCard;
    Card4: TCard;
    Card5: TCard;
    Card6: TCard;
    Card1: TCard;
    Card7: TCard;
    Card8: TCard;
    Card9: TCard;
    Card10: TCard;
    Card11: TCard;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure NewGame1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure UDPSUDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Poke:array[0..9] of TCard;
  Clr:array[0..3] of TCardSuit;
  PCard:array[0..51] of TPoke;
  USER:array[0..9] of TPoke;

implementation

{$R *.dfm}

procedure TForm1.NewGame1Click(Sender: TObject);
var i,j,k,l,num:integer;x,y,z:string;
begin
    Clr[0]:=Clubs; Clr[1]:=Diamonds; Clr[2]:=Hearts; Clr[3]:=Spades;
    Poke[0]:=card2; Poke[1]:=card3; Poke[2]:=card4; Poke[3]:=card5; Poke[4]:=card6;
    Poke[5]:=card7; Poke[6]:=card8; Poke[7]:=card9; Poke[8]:=card10; Poke[9]:=card11;
    Randomize;
    for i:=0 to 51 do
    begin
      repeat
        PCard[i].val:=Random(13)+1; // 1~13
        PCard[i].clr:=Random(4);  // 0~ 3
        PCard[i].back:=true;
        k:=0;
        for j:=0 to i-1 do
        begin
            if (PCard[i].val=Pcard[j].val)and(PCard[i].clr=Pcard[j].clr) then
            begin k:=1; break; end;
        end;
      until k=0;
    end;
    //**** Give 5 cards to user ****


    for i:=0 to 9 do
    begin
        USER[i]:=PCard[i];
        x:=format('%.1d',[USER[i].clr]);
        y:=format('%.2d',[USER[i].val]);
        num:=i;
        z:=format('%.1d',[num]);
        UDPC.Send('ST'+x+y+z);
        UDPC.Send('OF'+z);
    end;

    //**** 給定牌面上的排 ****
    for l:=0 to 9 do
    begin
        Poke[l].Value:=USER[l].val;
        Poke[l].Suit:=Clr[ USER[l].clr ];
        Poke[l].ShowDeck:=true;
    end;


    button1.Enabled:=false;
    button2.Enabled:=true;
    button3.Enabled:=true;
    button4.Enabled:=true;
    button5.Enabled:=true;
    Poke[1].ShowDeck:=false;
    Poke[5].ShowDeck:=false;
    Poke[6].ShowDeck:=false;
    memo1.Lines.Clear;
    memo2.Lines.Clear;
    UDPC.Send('CL');
    UDPC.Send('OP0');
    UDPC.Send('OP1');
    UDPC.Send('OP6');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Poke[7].ShowDeck:=false;
    button3.Enabled:=false;
    UDPC.Send('OP7');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    Poke[8].ShowDeck:=false;
    button4.Enabled:=false;
    UDPC.Send('OP8');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    Poke[9].ShowDeck:=false;
    button5.Enabled:=false;
    UDPC.Send('OP9');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    button2.Enabled:=false;
    button3.Enabled:=false;
    button4.Enabled:=false;
    button5.Enabled:=false;
    memo1.Lines.Add('Finish!');
    UDPC.Send('PA');
    if memo1.Lines.Text=memo2.Lines.Text then
    begin
        button1.Enabled:=true;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i,num1,num2,c1,c2:integer;
begin
    Poke[0].ShowDeck:=false;
    button1.Enabled:=false;
    num1:=0;
    num2:=0;
    c1:=0;
    c2:=0;
    for i:=0 to 4 do
    begin
      if Poke[i].ShowDeck=false then
        begin
            if Poke[i].Value>10 then
            begin
                c1:=Poke[i].Value-10
            end;
            num1:=num1+Poke[i].Value-c1;
        end;
    end;
    for i:=5 to 9 do
    begin
      if Poke[i].ShowDeck=false then
        begin
            if Poke[i].Value>10 then
            begin
                c2:=Poke[i].Value-10
            end;
            num2:=num2+Poke[i].Value-c2;
        end;
    end;


    if num1>num2 then
    begin
        memo1.Lines.Add('You lose!');
        memo2.Lines.Add('You win!');
        if num1>21 then
        begin
            memo1.Lines.Add('You win!');
            memo2.Lines.Add('You lose!');
        end;
        if num2>21 then
        begin
            memo1.Lines.Add('You lose!');
        end;
    end
    else if num2>num1 then
    begin
        memo1.Lines.Add('You win!');
        memo2.Lines.Add('You lose!');
        if num2>21 then
        begin
            memo1.Lines.Add('You lose!');
            memo2.Lines.Add('You win!');
        end;
        if num1>21 then
        begin
            memo2.Lines.Add('You lose!');
        end;
    end
    else if num1=num2 then
    begin
        memo1.Lines.Add('equal!');
        memo2.Lines.Add('equal!');
        if num1>21 then
        begin
            memo2.Lines.Add('You lose!');
        end;
        if num2>21 then
        begin
            memo1.Lines.Add('You lose!');
        end;
    end
end;

procedure TForm1.UDPSUDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
var s,z:string;i,x,y,k:integer;
begin
    k:=AData.Size; setlength( s,k );
    AData.Read( s[1],k );
    z:=copy(s,1,2);
    if z='ST' then
    begin
        x:=strtoint(copy(s,3,1));
        y:=strtoint(copy(s,4,2));
        i:=strtoint(copy(s,6,1));
        Poke[i].Value:=y;
        Poke[i].Suit:=Clr[x];

    end
    else if z='OP' then
    begin
        i:=strtoint(copy(s,3,1));
        Poke[i].ShowDeck:=false;
    end
    else if z='OF' then
    begin
        i:=strtoint(copy(s,3,1));
        Poke[i].ShowDeck:=true;
        button2.Enabled:=true;
        button3.Enabled:=true;
        button4.Enabled:=true;
        button5.Enabled:=true;
    end
    else if z='PA' then
    begin
        if button2.Enabled=false then
        begin
            button1.Enabled:=true;
            memo2.Lines.Add('Finish!');
        end
        else if button2.Enabled=true then
        begin
            memo2.Lines.Add('Finish!');
        end;
    end
    else if z='CL' then
    begin
        memo1.Lines.Clear;
        memo2.Lines.Clear;
    end
end;

procedure TForm1.FormCreate(Sender: TObject);
var i,j,k,l,num:integer;x,y,z:string;
begin
    Clr[0]:=Clubs; Clr[1]:=Diamonds; Clr[2]:=Hearts; Clr[3]:=Spades;
    Poke[0]:=card2; Poke[1]:=card3; Poke[2]:=card4; Poke[3]:=card5; Poke[4]:=card6;
    Poke[5]:=card7; Poke[6]:=card8; Poke[7]:=card9; Poke[8]:=card10; Poke[9]:=card11;
    Randomize;
    for i:=0 to 51 do
    begin
      repeat
        PCard[i].val:=Random(13)+1; // 1~13
        PCard[i].clr:=Random(4);  // 0~ 3
        PCard[i].back:=true;
        k:=0;
        for j:=0 to i-1 do
        begin
            if (PCard[i].val=Pcard[j].val)and(PCard[i].clr=Pcard[j].clr) then
            begin k:=1; break; end;
        end;
      until k=0;
    end;
    //**** Give 5 cards to user ****


    for i:=0 to 9 do
    begin
        USER[i]:=PCard[i];
        x:=format('%.1d',[USER[i].clr]);
        y:=format('%.2d',[USER[i].val]);
        num:=i;
        z:=format('%.1d',[num]);
        UDPC.Send('ST'+x+y+z);
        UDPC.Send('OF'+z);
    end;

    //**** 給定牌面上的排 ****
    for l:=0 to 9 do
    begin
        Poke[l].Value:=USER[l].val;
        Poke[l].Suit:=Clr[ USER[l].clr ];
        Poke[l].ShowDeck:=true;
    end;


    button1.Enabled:=false;
    button2.Enabled:=true;
    button3.Enabled:=true;
    button4.Enabled:=true;
    button5.Enabled:=true;
    
end;

end.
