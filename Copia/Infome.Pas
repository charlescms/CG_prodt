{
   Programa.: Infome.PAS
   Copyright: Modular Software 2006
            : Todos os direitos reservados
   Site.....: http://www.xmaker.com.br
}
unit Infome;

interface

{$I Princ.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, BaseD, Atributo, Tabela, Menus, Calculos, db,
  {$I LTab.pas}
  XLookUp, XDBDate, Mask, XDate, XEdit, XNum, FR_DSet, FR_DBSet, FR_Class, FR_Desgn,
  {$IFDEF DELPHI5}{$ELSE}Variants, MaskUtils,{$ENDIF}
  Tabs, comctrls, XBanner, checklst;

type
  TFormInfome = class(TForm)
    PnSup: TPanel;
    ShapeSup: TShape;
    LbTituloForm: TLabel;
    BtnAjuda: TSpeedButton;
    BtnFechar: TSpeedButton;
    frDBDataSet: TfrDBDataSet;
    {01-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
    frDBDataSet_DPrudutoContratoT: TfrDBDataSet;
    frDBDataSet_DExpotadoTransito: TfrDBDataSet;
    frDBDataSet_DBoocking: TfrDBDataSet;
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
    frDesigner: TfrDesigner;
    frReport: TfrReport;
    Selecao_1: TScrollBox;
    Divisao: TTabSet;
    Panel1: TPanel;
    BtnVisualizar: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FuncoesExtras(const Name: String; p1, p2, p3: Variant;
      var Val: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    QyRelatorio: TTabela;
    {02-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
    DContratoTransporte: TDContratoTransporte;
    DPrudutoContratoT: TDPrudutoContratoT;
    DExpotadoTransito: TDExpotadoTransito;
    DBoocking: TDBoocking;
    procedure CalculosDContratoTransporte(DataSet: TDataSet);
    procedure AtualizaDetalhe_DContratoTransporte(Sender: TObject; Field: TField);
    procedure CalculosDPrudutoContratoT(DataSet: TDataSet);
    procedure AtualizaDetalhe_DPrudutoContratoT(Sender: TObject; Field: TField);
    procedure CalculosDExpotadoTransito(DataSet: TDataSet);
    procedure AtualizaDetalhe_DExpotadoTransito(Sender: TObject; Field: TField);
    procedure CalculosDBoocking(DataSet: TDataSet);
    procedure AtualizaDetalhe_DBoocking(Sender: TObject; Field: TField);
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
    procedure ConstroiSql;
    procedure InicializaVariaveis;
    procedure Parametros(Tabela: TTabela);
  public
    { Public declarations }
    {03-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  end;

var
  FormInfome: TFormInfome;

implementation

{$R *.DFM}

uses Publicas, Princ, Rotinas, Abertura, GridPesquisa, Interno;

procedure TFormInfome.ConstroiSql;
var
  I: Integer;
begin
  {04-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  DContratoTransporte.Filtro.Clear;
  DContratoTransporte.AtualizaSql(False);
  Parametros(DContratoTransporte);
  DContratoTransporte.Open;
  frDBDataSet.DataSet := DContratoTransporte;
  frDBDataSet_DPrudutoContratoT.DataSet := DPrudutoContratoT;
  frDBDataSet_DExpotadoTransito.DataSet := DExpotadoTransito;
  frDBDataSet_DBoocking.DataSet := DBoocking;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

procedure TFormInfome.Parametros(Tabela: TTabela);
var
  I: Integer;
  Classe,Nome: String;
begin
  for I:=0 to Self.ComponentCount-1 do
  begin
    Nome := Self.Components[I].Name;
    if Tabela.Params.FindParam(Nome) <> nil then
    begin
      Classe := UpperCase(Self.Components[I].ClassName);
      if Classe = 'TLISTBOX' then
        Tabela.ParamByName(Nome).Value := TListBox(Self.Components[I]).Items[TListBox(Self.Components[I]).ItemIndex]
      else if Classe = 'TEDIT' then
        Tabela.ParamByName(Nome).Value := TEdit(Self.Components[I]).Text
      else if Classe = 'TCOMBOBOX' then
        Tabela.ParamByName(Nome).Value := TComboBox(Self.Components[I]).Text
      else if Classe = 'TCHECKBOX' then
        Tabela.ParamByName(Nome).Value := TCheckBox(Self.Components[I]).Checked
      else if Classe = 'TRADIOGROUP' then
        Tabela.ParamByName(Nome).Value := TRadioGroup(Self.Components[I]).Items[TRadioGroup(Self.Components[I]).ItemIndex]
      else if Classe = 'TCHECKLISTBOX' then
        Tabela.ParamByName(Nome).Value := TCheckListBox(Self.Components[I]).Items[TCheckListBox(Self.Components[I]).ItemIndex]
      else if Classe = 'TXDATEEDIT' then
        Tabela.ParamByName(Nome).AsDate := TXDateEdit(Self.Components[I]).DateValue
      else if Classe = 'TXEDIT' then
        Tabela.ParamByName(Nome).Value := TXEdit(Self.Components[I]).Text
      else if Classe = 'TXNUMEDIT' then
        Tabela.ParamByName(Nome).Value := TXNumEdit(Self.Components[I]).Value;
    end;
  end;
end;

procedure TFormInfome.FormShow(Sender: TObject);
Var
  I: Integer;
begin
  {05-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  Caption := 'INFORMES';
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  {06-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  DContratoTransporte := TDContratoTransporte.Create(Self);
  DContratoTransporte.OnCalcFields := CalculosDContratoTransporte;
  DContratoTransporte.DataSource.OnDataChange := AtualizaDetalhe_DContratoTransporte;
  DPrudutoContratoT := TDPrudutoContratoT.Create(Self);
  DPrudutoContratoT.OnCalcFields := CalculosDPrudutoContratoT;
  DPrudutoContratoT.DataSource.OnDataChange := AtualizaDetalhe_DPrudutoContratoT;
  DExpotadoTransito := TDExpotadoTransito.Create(Self);
  DExpotadoTransito.OnCalcFields := CalculosDExpotadoTransito;
  DExpotadoTransito.DataSource.OnDataChange := AtualizaDetalhe_DExpotadoTransito;
  DBoocking := TDBoocking.Create(Self);
  DBoocking.OnCalcFields := CalculosDBoocking;
  DBoocking.DataSource.OnDataChange := AtualizaDetalhe_DBoocking;
  QyRelatorio := DContratoTransporte;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  BtnAjuda.Visible  := False;
  BtnFechar.Visible := False;
  FormResize(Self);
  frReport.OnUserFunction := FuncoesExtras;
end;

procedure TFormInfome.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormInfome.InicializaVariaveis;
begin
  frVariables['Titulo']       := Sistema.Titulo;
  frVariables['Versao']       := Sistema.Versao;
  frVariables['Analista']     := Sistema.Analista;
  frVariables['Programador']  := Sistema.Programador;
  frVariables['Projetista']   := Sistema.Projetista;
  frVariables['EstiloData']   := Sistema.EstiloData;
  frVariables['SenhaInicial'] := Sistema.SenhaInicial;
  frVariables['Pasta']        := Sistema.Pasta;
  frVariables['Usuario']      := Sistema.Usuario;
  frVariables['Senha']        := Sistema.Senha;
  frVariables['Master']       := Sistema.Master;
  frVariables['Grupo']        := Sistema.Grupo;
  frVariables['NumeroUsr']    := Sistema.NumeroUsr;
  frVariables['EmpresaUsr']   := Sistema.EmpresaUsr;
  frVariables['EnderecoUsr']  := Sistema.EnderecoUsr;
  frVariables['BairroUsr']    := Sistema.BairroUsr;
  frVariables['CidadeUsr']    := Sistema.CidadeUsr;
  frVariables['UfUsr']        := Sistema.UfUsr;
  frVariables['CEPUsr']       := Sistema.CEPUsr;
  frVariables['CNPJUsr']      := Sistema.CNPJUsr;
  frVariables['IEUsr']        := Sistema.IEUsr;
  frVariables['FonesUsr']     := Sistema.FonesUsr;
  frVariables['LogoUsr']      := Sistema.LogoUsr;
  frVariables['Titulo_1']     := Caption;
  frVariables['Titulo_2']     := '';
  if frReport.FindObject('Logomarca') <> nil then
    if FileExists(Sistema.LogoUsr) then
      TfrPictureView(frReport.FindObject('Logomarca')).Picture.LoadFromFile(Sistema.LogoUsr);
end;

procedure TFormInfome.BtnVisualizarClick(Sender: TObject);
begin
  ConstroiSql;
  InicializaVariaveis;
  if QyRelatorio.Eof then
    MessageDlg('Nenhum registro selecionado !',mtInformation,[mbOk],0)
  else
    frReport.ShowReport;  // DesignReport  ->  Permite ao usu�rio final editar o Layout do Relat�rio
  QyRelatorio.Close;
end;

procedure TFormInfome.FormResize(Sender: TObject);
begin
  BtnAjuda.Left  := ShapeSup.Width - 37;
  BtnFechar.Left := ShapeSup.Width - 19;
end;

procedure TFormInfome.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(13) then
    begin
      Key := #0;
      {Atua como a tecla TAB}
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TFormInfome.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {07-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  DContratoTransporte.Free;
  DPrudutoContratoT.Free;
  DExpotadoTransito.Free;
  DBoocking.Free;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

{08-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
procedure TFormInfome.CalculosDContratoTransporte(DataSet: TDataSet);
begin
end;

procedure TFormInfome.CalculosDPrudutoContratoT(DataSet: TDataSet);
begin
end;

procedure TFormInfome.CalculosDExpotadoTransito(DataSet: TDataSet);
begin
end;

procedure TFormInfome.CalculosDBoocking(DataSet: TDataSet);
begin
  DBoocking.SALDO.Conteudo := CalculaDBoocking_SALDO_Rel(Self);
end;

procedure TFormInfome.AtualizaDetalhe_DContratoTransporte(Sender: TObject;
  Field: TField);
begin
  DPrudutoContratoT.AtribuiFiltroMestre(True, False);
  DPrudutoContratoT.AtualizaSql(False);
  Parametros(DPrudutoContratoT);
  DPrudutoContratoT.Open;

  DExpotadoTransito.AtribuiFiltroMestre(True, False);
  DExpotadoTransito.AtualizaSql(False);
  Parametros(DExpotadoTransito);
  DExpotadoTransito.Open;

  DBoocking.AtribuiFiltroMestre(True, False);
  DBoocking.AtualizaSql(False);
  Parametros(DBoocking);
  DBoocking.Open;

end;

procedure TFormInfome.AtualizaDetalhe_DPrudutoContratoT(Sender: TObject;
  Field: TField);
begin
end;

procedure TFormInfome.AtualizaDetalhe_DExpotadoTransito(Sender: TObject;
  Field: TField);
begin
end;

procedure TFormInfome.AtualizaDetalhe_DBoocking(Sender: TObject;
  Field: TField);
begin
end;
{99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}

procedure TFormInfome.FuncoesExtras(const Name: String; p1, p2,
  p3: Variant; var Val: String);
begin
  if frParser.Calc(p1) = null then
    exit;
  if Name = 'MASCVALOR' then
    Val := '''' + MascValor(frParser.Calc(p1),frParser.Calc(p2)) + ''''
  else if Name = 'CONSTSTR' then
    Val := '''' + ConstStr(frParser.Calc(p1),frParser.Calc(p2)) + ''''
  else if Name = 'RETIRABRANCOS' then
    Val := '''' + RetiraBrancos(frParser.Calc(p1)) + ''''
  else if Name = 'PADR' then
    Val := '''' + PadR(frParser.Calc(p1),frParser.Calc(p2)) + ''''
  else if Name = 'PADL' then
    Val := '''' + PadL(frParser.Calc(p1),frParser.Calc(p2)) + ''''
  else if Name = 'CENTER' then
    Val := '''' + Center(frParser.Calc(p1),frParser.Calc(p2)) + ''''
  else if Name = 'SPACE' then
    Val := '''' + Space(frParser.Calc(p1)) + ''''
  else if Name = 'POREXTENSO' then
    Val := '''' + PorExtenso(frParser.Calc(p1)) + ''''
  else if Name = 'STRZERO' then
    Val := '''' + StrZero(frParser.Calc(p1),frParser.Calc(p2)) + ''''
  else if Name = 'FORMATMASKTEXT' then
    Val := '''' + FormatMaskText(frParser.Calc(p1),frParser.Calc(p2)) + ''''
  else if Name = 'MASCTEXTO' then
    Val := '''' + MascTexto(frParser.Calc(p1),frParser.Calc(p2)) + ''''
  else if Name = 'MASCDATA' then
    Val := '''' + FormatDateTime(frParser.Calc(p2),frParser.Calc(p1)) + ''''
  else if Name = 'CALCC_0' then
    Val := '''' + FloatToStr(CalcC(frParser.Calc(p1),frParser.Calc(p2),frParser.Calc(p3),0)) + ''''
  else if Name = 'CALCC_1' then
    Val := '''' + FloatToStr(CalcC(frParser.Calc(p1),frParser.Calc(p2),frParser.Calc(p3),1)) + ''''
  else if Name = 'CALCC_2' then
    Val := '''' + FloatToStr(CalcC(frParser.Calc(p1),frParser.Calc(p2),frParser.Calc(p3),2)) + ''''
  else if Name = 'CALCC_3' then
    Val := '''' + FloatToStr(CalcC(frParser.Calc(p1),frParser.Calc(p2),frParser.Calc(p3),3)) + ''''
  else if Name = 'CALCC_4' then
    Val := '''' + FloatToStr(CalcC(frParser.Calc(p1),frParser.Calc(p2),frParser.Calc(p3),4)) + ''''
  else if Name = 'CALCC_5' then
    Val := '''' + FloatToStr(CalcC(frParser.Calc(p1),frParser.Calc(p2),frParser.Calc(p3),5)) + ''''
end;

procedure TFormInfome.FormKeyDown(Sender: TObject; var Key: Word;
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
