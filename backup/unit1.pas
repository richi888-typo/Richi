unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSimpan: TButton;
    btnreset: TButton;
    cbKota: TComboBox;
    cbxktp: TCheckBox;
    cbxfoto: TCheckBox;
    cbxIjasah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnresetClick(Sender: TObject);
    procedure cbxktpChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FromShow(Sender: TObject);
    procedure rgJenisKelaminClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  Memo1.lines.Add(Edit1.Text );

   if(rgJenisKelamin.ItemIndex=0)then
  begin
  memo1.lines.add('Laki-laki');
  end
  else if(rgJenisKelamin.ItemIndex=1)then
  begin
  memo1.lines.add('Perempuan')
  end;

  Memo1.lines.add(cbKota.Text) ;

  if (cbxKTP.Checked) then
  Memo1.lines.add('KTP ada');

  if (cbxfoto.Checked) then
  Memo1.lines.add('Foto ada');

  if (cbxIjasah.Checked) then
  Memo1.lines.add('Ijasah ada');
  end;


procedure TForm1.btnresetClick(Sender: TObject);
begin
  Edit1.text:='';
  Memo1.Clear;
  rgJenisKelamin.ItemIndex:=-1;
  cbKota.ItemIndex:=-1;
  cbKota.text:=' ';
  cbxKTP.Checked:=False;
  cbxfoto.Checked:=False;
  cbxIjasah.Checked:=False;

end;

procedure TForm1.cbxktpChange(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FromShow(Sender: TObject);
begin
  btnreset.click;
  btnresetClick(Sender);
end;

procedure TForm1.rgJenisKelaminClick(Sender: TObject);
begin


end;

end.

