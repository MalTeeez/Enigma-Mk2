unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.Menus, Vcl.ActnPopup,
  Vcl.Touch.Keyboard, Vcl.ComCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, ShellAPI,
  Vcl.WinXCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label3: TLabel;
    Button8: TButton;
    Label4: TLabel;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit3: TEdit;
    Button10: TButton;
    Label5: TLabel;
    Label6: TLabel;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Edit4: TEdit;
    CheckBox6: TCheckBox;
    Label7: TLabel;
    TrackBar1: TTrackBar;
    Edit5: TEdit;
    UpDown1: TUpDown;
    Button11: TButton;
    Button12: TButton;
    CheckBox7: TCheckBox;
    Label8: TLabel;
    CheckBox8: TCheckBox;
    Label9: TLabel;
    ActivityIndicator1: TActivityIndicator;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);


  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form4: TForm4;
  pwl: integer;

implementation

uses Unit1;

{$R *.dfm}

// Verschlüsselung
procedure TForm4.Button10Click(Sender: TObject);
begin
  Edit3.SelectAll;
  Edit3.CopyToClipboard;
end;

procedure TForm4.Button11Click(Sender: TObject);
 begin
  Edit2.Clear;
  Edit2.Text := Edit3.Text;

 end;

procedure TForm4.Button12Click(Sender: TObject);
 begin
   Edit1.Clear;
 end;

      //Verschlüsselung
procedure TForm4.Button1Click(Sender: TObject);
var
  m, i, zn, zc, e: integer;
  o, v, n, c, ergebnis: string;

begin
  if Checkbox8.Checked=false then
   Edit2.Clear;
  Label3.Caption := '';
  c := Edit2.Text;
  n := Edit1.Text;
  if length(n) > length(c) then
    begin
    if CheckBox7.Checked then
      begin
        Label7.Caption := '' ;
        o := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopgqrstuvxyz !"#$%&''()*+,-./0123456789:;<=>?@[\]^_`{|}~';
       // if CheckBox6.Checked then
       //  o := o + Edit4.Text;
        Edit2.Clear;
        Randomize;
        for m := 1 to length(n) do
          begin
            Edit2.Text := Edit2.Text + o[Random(length(o) + 1)];
          end;
        c := Edit2.Text;
      end
    else
       begin
       Label3.Caption := 'Code must be longer than message!';
       exit
      end;
    end;

  //Memo1.Lines.Clear;
  v := '';
  for i := 1 to length(Edit1.Text) do
  begin
    zc := ord(c[i]) - 32;
    zn := ord(n[i]) - 32;
    e := zn + zc;
    if e > 94 then
      e := e - 94;
    v := v + chr(e + 32);

  end;
  Memo1.Lines.Add(v);
//  Edit2.Clear;
  // Memo1.Lines.Add('Ergebnis: '+v);

end;

// Entschlüsselung
procedure TForm4.Button2Click(Sender: TObject);

var
  i, zn, zc, e: integer;
  v, n, c: string;
begin
  Label3.Caption := '';
  c := Edit2.Text;
  n := Edit1.Text;
  if length(n) > length(c) then
  begin
    Label3.Caption := 'Code must be longer than message!';
    exit;
  end;

  Memo1.Lines.Clear;
  v := '';

  for i := 1 to length(Edit1.Text) do
  begin
    zc := ord(c[i]) - 32;
    zn := ord(n[i]) - 32;
    if (zc >= 0) or (zc <= 94) then
    begin
      e := zn - zc;
      if e < 0 then
        e := e + 94;
      if e > 94 then
        e := e - 94;
      v := v + chr(e + 32);
    end;

  end;
  Memo1.Lines.Add(v);
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Edit1.SelectAll;
  Edit1.CopyToClipboard;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  Edit2.SelectAll;
  Edit2.CopyToClipboard;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit1.PasteFromClipboard;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
  Edit2.Text := '';
  Edit2.PasteFromClipboard;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
  Memo1.SelectAll;
  Memo1.CopyToClipboard;
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm4.Button9Click(Sender: TObject);
var
  i: integer;
  g: string; // Die vom Benutzer ausgewählten Zeichen
begin
  ActivityIndicator1.Animate:=true;
  Application.ProcessMessages;
  Label7.Caption := '';
  g := '';
  if CheckBox1.Checked then
    g := g + 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  if CheckBox2.Checked then
    g := g + 'abcdefghijklmnopgqrstuvxyz';
  if CheckBox4.Checked then
    g := g + ' !"#$%&''()*+,-./';
  if CheckBox3.Checked then
    g := g + '0123456789';
  if CheckBox5.Checked then
    g := g + ':;<=>?@[\]^_`{|}~';
  if CheckBox6.Checked then
    g := g + Edit4.Text;
  Label6.Caption := g;
  Edit3.Clear;
  if g = '' then
  begin
    Label7.Caption := 'No Charaters were selected!';
    exit;
  end;
  Randomize;
  for i := 1 to pwl do
  begin
    Edit3.Text := Edit3.Text + g[Random(length(g))+ 1];
  end;
  ActivityIndicator1.Animate:=false;
end;



procedure TForm4.Edit1Change(Sender: TObject);
var
  n: string;
  i: integer;

begin
  n := Edit1.Text;
  Edit1.Color := clWindow;
  for i := 1 to length(Edit1.Text) do

  begin
    if (ord(n[i]) = 8364) then
    begin
      if application.MessageBox('Please uninstall Windows.', 'Error 8^11',
        MB_OKCANCEL) = 1 then
        screen.Cursor := crNone;
      form1.Show;
      // application.Terminate
    end

    else if (ord(n[i]) > 126) or (ord(n[i]) < 32) then
      Edit1.Color := RGB(255, 150, 150)

    else
      Edit1.Color := clWindow;

  end;

end;

procedure TForm4.Edit2Change(Sender: TObject);
var
  n: string;
  i: integer;

begin
  n := Edit2.Text;
  Edit2.Color := clWindow;
  for i := 1 to length(Edit2.Text) do

  begin

    if (ord(n[i]) > 126) or (ord(n[i]) < 32) then
      Edit2.Color := RGB(255, 150, 150)

    else
      Edit2.Color := clWindow;
  end;
end;

procedure TForm4.Edit5Change(Sender: TObject);

begin
  if Edit5.Text = '' then
  begin
    pwl := 0;
    TrackBar1.Position := 0;

  end

  else
  begin
    pwl := StrToInt(Edit5.Text);
    // if pwl>64 then
    // TrackBar1.Position:=64
    TrackBar1.Position := StrToInt(Edit5.Text);

  end;

end;

procedure TForm4.FormShow(Sender: TObject);
begin
  pwl := 16;
end;



procedure TForm4.TrackBar1Change(Sender: TObject);
begin
  pwl := TrackBar1.Position;
  Edit5.Text := IntToStr(TrackBar1.Position);
  Label6.Caption := Label6.Caption + '.';

end;

end.
