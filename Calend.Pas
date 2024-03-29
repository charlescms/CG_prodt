{
   Programa.: Calend.PAS
   Copyright: Modular Software 2006
            : Todos os direitos reservados
   Site.....: http://www.xmaker.com.br
}
unit Calend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus, ExtCtrls, Grids, Calendar, Spin, ComCtrls, Mask, Buttons,
  ToolWin;

type
  TFormCalendario = class(TForm)
    PanelDias: TPanel;
    VCalend: TCalendar;
    PanelMes: TPanel;
    GetAno: TSpinEdit;
    AlternaMes: TUpDown;
    PanelExtra: TPanel;
    LbTitulo: TLabel;
    LbDias: TLabel;
    EdDias: TEdit;
    Dt_i: TMaskEdit;
    Dt_f: TMaskEdit;
    LbPeriodo: TLabel;
    LbTDias: TLabel;
    LbTMeses: TLabel;
    LbTAnos: TLabel;
    EdR_Dias: TEdit;
    EdR_Meses: TEdit;
    EdR_Anos: TEdit;
    PnBotoes: TPanel;
    Futura: TSpeedButton;
    Calculo: TSpeedButton;
    BtnOk: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure GetAnoChange(Sender: TObject);
    procedure AlternaMesClick(Sender: TObject; Button: TUDBtnType);
    procedure FuturaClick(Sender: TObject);
    procedure CalculoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdDiasExit(Sender: TObject);
    procedure Dt_fExit(Sender: TObject);
    procedure VCalendClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function PegaMes(Var Mes : Word) : String;
    procedure AtribuiData;
    procedure TamanhoNatural;
  public
    { Public declarations }
  end;

var
  FormCalendario: TFormCalendario;
  Data: TDate;
  Dia, Mes, Ano: Word;

implementation

{$R *.DFM}

uses Rotinas, Validar, Interno;

procedure TFormCalendario.FormShow(Sender: TObject);
begin
  TamanhoNatural;
  DecodeDate( Now, Ano, Mes, Dia );
  AtribuiData;
end;

procedure TFormCalendario.TamanhoNatural;
begin
  PanelExtra.Visible := False;
  Height := 200;
end;

function TFormCalendario.PegaMes(Var Mes : Word) : String;
begin
  case Mes of
    1 : Result := 'Janeiro';
    2 : Result := 'Fevereiro';
    3 : Result := 'Mar�o';
    4 : Result := 'Abril';
    5 : Result := 'Maio';
    6 : Result := 'Junho';
    7 : Result := 'Julho';
    8 : Result := 'Agosto';
    9 : Result := 'Setembro';
   10 : Result := 'Outubro';
   11 : Result := 'Novembro';
   12 : Result := 'Dezembro';
  end;
end;

procedure TFormCalendario.GetAnoChange(Sender: TObject);
begin
  Ano := GetAno.Value;
  AtribuiData;
end;

procedure TFormCalendario.AlternaMesClick(Sender: TObject;
  Button: TUDBtnType);
begin
  if Button = btNext then
    Mes := Mes + 1
  else if Button = btPrev then
    Mes := Mes - 1;
  if Mes > 12 then
  begin
    Mes := 01;
    Ano := Ano + 01;
  end;
  if Mes < 01 then
  begin
    Mes := 12;
    Ano := Ano - 01;
  end;
  AtribuiData;
end;

procedure TFormCalendario.AtribuiData;
Var
  UltDia: Integer;
begin
  UltDia := StrToInt(UltimoDiadoMes(StrZero(Mes,02)+IntToStr(Ano)));
  if Dia > UltDia then
    Dia := UltDia;
  VCalend.Day   := Dia;
  VCalend.Month := Mes;
  VCalend.Year  := Ano;
  GetAno.Value  := Ano;
  PanelMes.Caption := PegaMes(Mes);
end;

procedure TFormCalendario.FuturaClick(Sender: TObject);
begin
  BtnOk.Visible     := False;
  LbPeriodo.Visible := False;
  Dt_I.Visible      := False;
  Dt_F.Visible      := False;
  LbTDias.Visible   := False;
  LbTMeses.Visible  := False;
  LbTAnos.Visible   := False;
  EdR_Dias.Visible  := False;
  EdR_Meses.Visible := False;
  EdR_Anos.Visible  := False;
  LbDias.Visible    := True;
  EdDias.Visible    := True;
  Height            := 319;
  PanelExtra.Visible:= True;
  LbTitulo.Caption  := 'Data Futura';
  EdDias.Text       := '0';
  EdDias.SetFocus;
  EdDias.SelectAll;
end;

procedure TFormCalendario.CalculoClick(Sender: TObject);
begin
  BtnOk.Visible     := True;
  LbTDias.Visible   := True;
  LbTMeses.Visible  := True;
  LbTAnos.Visible   := True;
  EdR_Dias.Visible  := True;
  EdR_Meses.Visible := True;
  EdR_Anos.Visible  := True;
  LbPeriodo.Visible := True;
  Dt_I.Visible      := True;
  Dt_F.Visible      := True;
  LbDias.Visible    := False;
  EdDias.Visible    := False;
  Height            := 319;
  PanelExtra.Visible:= True;
  LbTitulo.Caption  := 'C�lculo entre Datas';
  Dt_I.Text         := DateToStr(VCalend.CalendarDate);
  Dt_F.Text         := Dt_I.Text;
  EdR_Dias.Text     := '';
  EdR_Meses.Text    := '';
  EdR_Anos.Text     := '';
  Dt_I.SetFocus;
  Dt_F.SelectAll;
end;

procedure TFormCalendario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Chr(27)) then
    Close;
  if Key = Chr(13) then
  begin
    Perform(WM_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFormCalendario.EdDiasExit(Sender: TObject);
var
  Numero: Integer;
begin
  Numero:=StrToIntDef(Trim(EdDias.Text),0);
  DecodeDate( VCalend.CalendarDate + Numero, Ano, Mes, Dia );
  AtribuiData;
  TamanhoNatural;
end;

procedure TFormCalendario.Dt_fExit(Sender: TObject);
begin
  if not DataValida(Dt_I.Text) then
  begin
    MessageDlg('Data Inicial Inv�lida !',mtInformation,[MbOk],0);
    Dt_I.SetFocus;
    Dt_I.SelectAll;
    Abort;
  end;
  if not DataValida(Dt_F.Text) then
  begin
    MessageDlg('Data Final Inv�lida !',mtInformation,[MbOk],0);
    Dt_F.SetFocus;
    Dt_F.SelectAll;
    Abort;
  end;
  EdR_Dias.Text  := FloatToStr(Round(StrToDate(Dt_f.Text) - StrToDate(Dt_I.Text)));
  EdR_Meses.Text := FloatToStr(Round((StrToDate(Dt_f.Text) - StrToDate(Dt_I.Text))/30));
  EdR_Anos.Text  := FloatToStr(Round((StrToDate(Dt_f.Text) - StrToDate(Dt_I.Text))/364));
end;

procedure TFormCalendario.VCalendClick(Sender: TObject);
begin
  TamanhoNatural;
end;

procedure TFormCalendario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCalendario := Nil;
end;

procedure TFormCalendario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then   // Calend�rio
    Interno108
  else if Key = VK_F6 then // Calculadora
    Interno109
  else if Key = VK_F7 then // Agenda
    Interno110;

end;

end.
