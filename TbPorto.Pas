{
   Programa.: TbPorto.PAS
   Copyright: Modular Software 2006
            : Todos os direitos reservados
   Site.....: http://www.xmaker.com.br
}
unit TbPorto;

interface

{$I Princ.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Tabs, BaseD, Db, Grids, DBGrids,
  {$IFDEF DELPHI5}{$ELSE}Variants, MaskUtils,{$ENDIF}
  Atributo, dbctrls, Clipbrd, Tabela, Menus, IniFiles, Printers, Calculos,
  {$I LTab.pas}
  JPeg, XLookUp, XDBDate, Mask, XDBEdit, XDBNum, XEdit, XBanner, XDate, XNum;

type
  TFormTbPorto = class(TForm)
    AbaConsulta: TTabSet;
    AbrirImagem: TMenuItem;
    BtnAnterior: TSpeedButton;
    BtnDesistir: TBitBtn;
    BtnExcluir: TSpeedButton;
    BtnIncluir: TSpeedButton;
    BtnLocalizar: TSpeedButton;
    BtnModificar: TSpeedButton;
    BtnPrimeiro: TSpeedButton;
    BtnProximo: TSpeedButton;
    BtnRefresh: TSpeedButton;
    BtnSalvar: TBitBtn;
    BtnTabela: TSpeedButton;
    BtnUltimo: TSpeedButton;
    CodTbPorto: TXDBNumEdit;
    ColarImagem: TMenuItem;
    CopiarImagem: TMenuItem;
    CortarImagem: TMenuItem;
    DataSource: TDataSource;
    Divisao_inf: TPanel;
    Divisao_sup: TPanel;
    DlgAbrirImagem: TOpenDialog;
    DlgSalvarComoImagem: TSaveDialog;
    GridConsulta: TDBGrid;
    Img_Form: TImage;
    Img_Tabela: TImage;
    LbcCodTbPorto: TLabel;
    LbcNomePorto: TLabel;
    MenuImagem: TPopupMenu;
    MnSep01: TMenuItem;
    mnu_ApagarColuna: TMenuItem;
    mnu_CalcularMedia: TMenuItem;
    mnu_ExcluirConsulta: TMenuItem;
    mnu_Filtrar: TMenuItem;
    mnu_Imprimir: TMenuItem;
    mnu_Ordenar: TMenuItem;
    mnu_OrdenarComposto: TMenuItem;
    mnu_Quantificar: TMenuItem;
    mnu_SalvarConsulta: TMenuItem;
    mnu_TotalizarColuna: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NoManutencao: TNotebook;
    NomePorto: TXDBEdit;
    PageForm: TNotebook;
    Pagina0: TScrollBox;
    Pagina1: TScrollBox;
    PgPagina1: TScrollBox;
    PnInferior: TPanel;
    PnSuperior: TPanel;
    PopConsulta: TPopupMenu;
    SalvarImagem: TMenuItem;
    StatusBar: TStatusBar;
    TabPaginas: TTabSet;
    procedure CodTbPortoExit(Sender: TObject);
    procedure NomePortoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnDesistirClick(Sender: TObject);
    procedure mnu_FiltrarClick(Sender: TObject);
    procedure mnu_OrdenarClick(Sender: TObject);
    procedure mnu_OrdenarCompostoClick(Sender: TObject);
    procedure mnu_ApagarColunaClick(Sender: TObject);
    procedure mnu_QuantificarClick(Sender: TObject);
    procedure mnu_TotalizarColunaClick(Sender: TObject);
    procedure mnu_CalcularMediaClick(Sender: TObject);
    procedure mnu_ImprimirClick(Sender: TObject);
    procedure mnu_SalvarConsultaClick(Sender: TObject);
    procedure mnu_ExcluirConsultaClick(Sender: TObject);
    procedure AbaConsultaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TabPaginasClick(Sender: TObject);
    procedure CortarImagemClick(Sender: TObject);
    procedure CopiarImagemClick(Sender: TObject);
    procedure ColarImagemClick(Sender: TObject);
    procedure AbrirImagemClick(Sender: TObject);
    procedure SalvarImagemClick(Sender: TObject);
    procedure ChamaGridPesquisa(Sender: TObject);
    procedure ValidaColunaGrid(Sender: TField);
    procedure BtnTabelaClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnModificarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure GridConsultaDblClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    Navegando: Boolean;
    ListaCamposED: TListaCampos; {Conter� a lista de campos em edi��o na ED}
    TituloModulo: String;
    ConsultasSalvas: TList;
    PaginaIni: Integer;
    ErroValidacao: Boolean;
    SalvarRegistro: Boolean;
    procedure Inicializa;
    procedure HabilitaBotoesEdicao(Valor: Boolean = True);
    procedure StatusTabela;
    function AbreTabelas: Boolean;
    procedure FechaTabelas;
    procedure MudaSeForUltimo;
    function AbandonandoEdicao: Boolean;
    procedure TelaManutencao;
    procedure TelaConsulta;
    procedure AtribuiValoresPadrao;
    procedure PosicionaNoCampo(Campo: TAtributo);
    procedure VerificaAtualizacoes;
    procedure ErroValidacaoCampo(MsgErro: String; Campo: TAtributo);
    procedure AntesdeSalvar;
    procedure AntesdeIncluir;
    procedure AntesdeModificar;
    procedure AntesdeExcluir;
    procedure DepoisdeIncluir;
    procedure DepoisdeModificar;
    procedure DepoisdeExcluir;
    function ConfirmaInclusao: Boolean;
    function ConfirmaModificacao: Boolean;
    function ConfirmaExclusao: Boolean;
    function ConfirmaGravacao: Boolean;
    procedure CamposCalculados;
    procedure BotoesManutencao(Habilita: Boolean);
    procedure HabilitaEdicao(Habilita: Boolean = true);
  public
    { Public declarations }
    {03-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
    TabelaPrincipal: TTabela;
    {04-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  end;

var
  FormTbPorto: TFormTbPorto;
  LastControl: TWinControl;

implementation

{$R *.DFM}

uses Publicas, Princ, Rotinas, RotinaEd, Abertura, GridPesquisa;

procedure TFormTbPorto.Inicializa;
begin
  {05-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  TabelaPrincipal    := TabGlobal.DTbPorto;
  TituloModulo       := 'Porto';
  Caption            := TituloModulo;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  FormPrincipal.PnImagemFundo.Visible := False;
  Sistema.JanelasMDI := Sistema.JanelasMDI + 01;
  if Sistema.JanelasMDI < 1 then
    Sistema.JanelasMDI := 1;
  Navegando          := False;
  DataSource.DataSet := TabelaPrincipal;
  ListaCamposED      := TListaCampos.Create;
  ConsultasSalvas    := TList.Create;
  PaginaIni          := 0;
  ErroValidacao      := False;
  TabPaginas.TabIndex:= 0;
  if not TabelaPrincipal.Active then
    TabelaPrincipal.AtualizaSql;
  {06-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  AtribuiCampoEdicao(TabGlobal.DTbPorto, TabGlobal.DTbPorto.NomePorto, -2, NomePortoExit, Nil, ListaCamposEd, FormTbPorto, DataSource, ChamaGridPesquisa);
  AtribuiCampoEdicao(TabGlobal.DTbPorto, TabGlobal.DTbPorto.CodTbPorto, -1, CodTbPortoExit, Nil, ListaCamposEd, FormTbPorto, DataSource, ChamaGridPesquisa);
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  TabPaginas.Visible  := TabPaginas.Tabs.Count > 1;
  Divisao_inf.Visible := TabPaginas.Tabs.Count <= 1;
  CamposCalculados;
  AjustaColunasConsulta(TabelaPrincipal);
  AbaConsulta.OnClick := Nil;
  AbaConsulta.TabIndex:= 0;
  Ed_AbaConsulta(TabelaPrincipal, AbaConsulta, ConsultasSalvas, GridConsulta, False);
  AbaConsulta.OnClick := AbaConsultaClick;
  BtnSalvar.Enabled   := False;
  BtnDesistir.Enabled := False;
  InicializaConsultasSalvas(TabelaPrincipal, AbaConsulta, ConsultasSalvas);
  PageForm.PageIndex := 0;
  NoManutencao.PageIndex := 0;
  HabilitaEdicao(False);
  HabilitaBotoesEdicao(False);
  if PageForm.PageIndex = 0 then
    TelaManutencao;
end;

procedure TFormTbPorto.HabilitaBotoesEdicao(Valor: Boolean = True);
begin
  BtnIncluir.Enabled   := not Valor;
  BtnModificar.Enabled := not Valor;
  BtnExcluir.Enabled   := not Valor;
  BtnLocalizar.Enabled := not Valor;
  BtnPrimeiro.Enabled  := not Valor;
  BtnAnterior.Enabled  := not Valor;
  BtnProximo.Enabled   := not Valor;
  BtnUltimo.Enabled    := not Valor;
  BtnRefresh.Enabled   := not Valor;
  BtnSalvar.Enabled    := Valor;
  BtnDesistir.Enabled  := Valor;
end;

procedure TFormTbPorto.FormShow(Sender: TObject);
begin
  Inicializa;
end;

function TFormTbPorto.AbreTabelas: Boolean;
begin
  {07-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  Result := True;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

procedure TFormTbPorto.FechaTabelas;
begin
  try
    if not TabelaPrincipal.Open_begin then
      TabelaPrincipal.Close;
  except
    on Erro: Exception do
    begin
      MessageDlg('Erro: ' + Erro.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFormTbPorto.CamposCalculados;
begin
  {08-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

procedure TFormTbPorto.BotoesManutencao(Habilita: Boolean);
begin
  FormPrincipal.Manutencao.Enabled := Habilita;
  FormPrincipal.Consulta.Enabled   := Habilita;
  BtnIncluir.Enabled   := Habilita;
  BtnModificar.Enabled := Habilita;
  BtnExcluir.Enabled   := Habilita;
  BtnLocalizar.Enabled := Habilita;
  BtnTabela.Enabled    := Habilita;
  BtnPrimeiro.Enabled  := Habilita;
  BtnAnterior.Enabled  := Habilita;
  BtnProximo.Enabled   := Habilita;
  BtnUltimo.Enabled    := Habilita;
  BtnRefresh.Enabled   := Habilita;
end;

procedure TFormTbPorto.HabilitaEdicao(Habilita: Boolean = true);
var
  I: Integer;
  Comp: TComponent;

  function PosicionaFoco(Indice: Integer): Boolean;
  var
    I: Integer;
    CampoED: TCampoEdicao;
  begin
    PosicionaFoco := False;
    for I:=0 to ListaCamposED.Count-1 do
    begin
      CampoED := TCampoEdicao(ListaCamposED[I]);
      if (CampoED.Controle.TabOrder = Indice) and (CampoED.Controle.CanFocus) and
         (CampoED.Controle.Enabled) and (CampoED.Controle.TabStop) and (CampoED.Pagina <= 0) then
      begin
        CampoED.Controle.SetFocus;
        PosicionaFoco := True;
        Break;
      end;
    end;
  end;

begin
  for I := 0 to 10 do
  begin
    Comp := FindComponent('Pagina' + IntToStr(I));
    if Comp <> nil then
      TScrollBox(Comp).Enabled := Habilita;
  end;
  if TabelaPrincipal.Inclusao or TabelaPrincipal.Modificacao then
    BotoesManutencao(False)
  else
    BotoesManutencao(True);
  HabilitaCamposEdicao(ListaCamposED, Habilita);
  if Habilita then
    for I:=0 to ListaCamposED.Count-1 do
      if PosicionaFoco(I) then
        break;
end;

function TFormTbPorto.ConfirmaInclusao: Boolean;
begin
  Result := True;
end;

function TFormTbPorto.ConfirmaModificacao: Boolean;
begin
  Result := True;
end;

function TFormTbPorto.ConfirmaExclusao: Boolean;
begin
  Result := True;
end;

function TFormTbPorto.ConfirmaGravacao: Boolean;
begin
  Result := True;
end;

procedure TFormTbPorto.TelaManutencao;
begin
  AtribuiDataSourceCampos(ListaCamposEd, DataSource);
  PageForm.PageIndex := 0;
  GridConsulta.DataSource := Nil;
  if (TabelaPrincipal.Inclusao) or
     (TabelaPrincipal.Modificacao) then
    HabilitaEdicao
  else
    HabilitaEdicao(False);
  ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd);
  TabelaPrincipal.AtribuiRelacionamentos;
  BtnTabela.Caption := 'Tabela';
  BtnTabela.Hint    := 'Visualizar registros em forma de tabela';
  BtnTabela.Glyph   := Img_Tabela.Picture.Bitmap;
  BtnTabela.Tag     := 0;
  Divisao_sup.Visible   := True;
end;

procedure TFormTbPorto.TelaConsulta;
begin
  AtribuiDataSourceCampos(ListaCamposEd, Nil);
  HabilitaEdicao(False);
  PageForm.PageIndex := 1;
  GridConsulta.DataSource := DataSource;
  BtnTabela.Caption := 'Formul�rio';
  BtnTabela.Hint    := 'Visualizar registros em forma de formul�rio';
  BtnTabela.Glyph   := Img_Form.Picture.Bitmap;
  BtnTabela.Tag     := 1;
  Divisao_sup.Visible   := False;
  GridConsulta.SetFocus;
end;

procedure TFormTbPorto.AtribuiValoresPadrao;
begin
  ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd, True);
  TabelaPrincipal.AtribuiRelacionamentos;

end;

procedure TFormTbPorto.AntesdeSalvar;
begin

end;

procedure TFormTbPorto.AntesdeIncluir;
begin

end;

procedure TFormTbPorto.AntesdeModificar;
begin

end;

procedure TFormTbPorto.AntesdeExcluir;
begin

end;

procedure TFormTbPorto.DepoisdeIncluir;
begin

end;

procedure TFormTbPorto.DepoisdeModificar;
begin

end;

procedure TFormTbPorto.DepoisdeExcluir;
begin

end;

procedure TFormTbPorto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if BtnSalvar.Enabled then
    TabelaPrincipal.Cancela;
end;

procedure TFormTbPorto.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  I: Integer;
begin
  AbaConsulta.OnClick := Nil;
  AbaConsulta.TabIndex:= 0;
  Ed_AbaConsulta(TabelaPrincipal, AbaConsulta, ConsultasSalvas, GridConsulta, False);
  FechaTabelas;
  DesabilitaFuncoesEd;
  ListaCamposED.Free;
  for I := 0 to ConsultasSalvas.Count - 1 do
    TConsultasSalvas(ConsultasSalvas[I]).Free;
  ConsultasSalvas.Free;
  Action := caFree;
  FormTbPorto := nil;
end;

procedure TFormTbPorto.StatusTabela;
begin
  if (TabelaPrincipal.Inclusao) then
    StatusBar.Panels[0].Text := 'Opera��o: Inclu�ndo'
  else if (TabelaPrincipal.Modificacao) then
    StatusBar.Panels[0].Text := 'Opera��o: Modificando'
  else
    StatusBar.Panels[0].Text := 'Opera��o: Visualizando';
  if (Trim(TabelaPrincipal.Filtro.Text) <> '') or
     (Trim(TabelaPrincipal.FiltroRelac.Text) <> '') or
     (Trim(TabelaPrincipal.FiltroFixo.Text) <> '') then
    StatusBar.Panels[1].Text := 'Filtragem: Habilitada'
  else
    StatusBar.Panels[1].Text := 'Filtragem: Desabilitada';
  StatusBar.Panels[2].Text := 'Ordena��o: '+TabelaPrincipal.TituloIndice;
  Application.ProcessMessages;
end;

procedure TFormTbPorto.FormActivate(Sender: TObject);
begin
  {
    Inicializa Menu Manuten��o e Barra de Ferramentas
  }
  FormPrincipal.Localizar.OnClick    := BtnLocalizarClick;
  FormPrincipal.Incluir.OnClick      := BtnIncluirClick;
  FormPrincipal.Modificar.OnClick    := BtnModificarClick;
  FormPrincipal.Excluir.OnClick      := BtnExcluirClick;
  FormPrincipal.Primeiro.OnClick     := BtnPrimeiroClick;
  FormPrincipal.Anterior.OnClick     := BtnAnteriorClick;
  FormPrincipal.Proximo.OnClick      := BtnProximoClick;
  FormPrincipal.Ultimo.OnClick       := BtnUltimoClick;
  {
    Inicializa Menu Consulta
  }
  FormPrincipal.Filtrar.OnClick          := mnu_FiltrarClick;
  FormPrincipal.Ordenar.OnClick          := mnu_OrdenarClick;
  FormPrincipal.OrdenarComposto.OnClick  := mnu_OrdenarCompostoClick;
  FormPrincipal.ApagarColuna.OnClick     := mnu_ApagarColunaClick;
  FormPrincipal.Quantificar.OnClick      := mnu_QuantificarClick;
  FormPrincipal.TotalizarColuna.OnClick  := mnu_TotalizarColunaClick;
  FormPrincipal.CalcularMedia.OnClick    := mnu_CalcularMediaClick;
  FormPrincipal.Imprimir.OnClick         := mnu_ImprimirClick;
  FormPrincipal.SalvarConsulta.OnClick   := mnu_SalvarConsultaClick;
  FormPrincipal.ExcluirConsulta.OnClick  := mnu_ExcluirConsultaClick;

  if TabelaPrincipal.Inclusao or TabelaPrincipal.Modificacao then
    BotoesManutencao(False)
  else
    BotoesManutencao(True);
end;

procedure TFormTbPorto.FormKeyPress(Sender: TObject; var Key: Char);
var
  ControleCampo: TWinControl;
begin
  ControleCampo := ActiveControl;
  while (ControleCampo <> nil) and (ControleCampo.Owner <> Self) do
    ControleCampo := ControleCampo.Parent;
  if Key = Chr(13) then
    begin
      Key := #0;
      {Atua como a tecla TAB}
      Perform(WM_NEXTDLGCTL, 0, 0);
      LastControl := ControleCampo;
      MudaSeForUltimo;
    end;
end;

procedure TFormTbPorto.BtnTabelaClick(Sender: TObject);
begin
  if BtnTabela.Tag = 0 then
    TelaConsulta
  else
    TelaManutencao;
  StatusTabela;
end;

procedure TFormTbPorto.BtnIncluirClick(Sender: TObject);
begin
  if ProcuraRestricao(TabelaPrincipal.NomeTabela,'I') then
  begin
    MessageDlg('Inclus�o n�o Permitida !',mtError,[mbOk],0);
    exit;
  end;
  if Not ConfirmaInclusao then
  begin
    MessageDlg('Inclus�o Cancelada !',mtError,[mbOk],0);
    exit;
  end;
  if TabelaPrincipal.Inclusao then
  begin
    MessageDlg('Opera��o de Inclus�o j� Ativa !',mtError,[mbOk],0);
    exit;
  end
  else if TabelaPrincipal.Modificacao then
  begin
    MessageDlg('Opera��o de Modifica��o est� Ativa !',mtError,[mbOk],0);
    exit;
  end;
  HabilitaCamposChave(ListaCamposEd);
  TabPaginas.TabIndex:= 0;
  TelaManutencao;
  AntesdeIncluir;
  TabelaPrincipal.Inclui(ListaCamposED);
  BtnSalvar.Enabled   := True;
  BtnDesistir.Enabled := True;
  HabilitaEdicao;
  AtribuiValoresPadrao;
  StatusTabela;
end;

procedure TFormTbPorto.BtnModificarClick(Sender: TObject);
begin
  if TabelaPrincipal.Eof then
  begin
    TabelaPrincipal.Prior;
    TabelaPrincipal.Next;
  end;
  if TabelaPrincipal.Eof then
  begin
    MessageDlg('Registro n�o encontrado !',mtError,[mbOk],0);
    exit;
  end;
  if ProcuraRestricao(TabelaPrincipal.NomeTabela,'M') then
  begin
    MessageDlg('Modifica��o n�o Permitida !',mtError,[mbOk],0);
    exit;
  end;
  if Not ConfirmaModificacao then
  begin
    MessageDlg('Modifica��o Cancelada !',mtError,[mbOk],0);
    exit;
  end;
  if TabelaPrincipal.Inclusao then
  begin
    MessageDlg('Opera��o de Inclus�o est� Ativa !',mtError,[mbOk],0);
    exit;
  end
  else if TabelaPrincipal.Modificacao then
  begin
    MessageDlg('Opera��o de Modifica��o j� Ativa !',mtError,[mbOk],0);
    exit;
  end;
  DesabilitaCamposChave(ListaCamposEd);
  TabPaginas.TabIndex:= 0;
  TelaManutencao;
  Screen.Cursor := crHourGlass;
  try
    AntesdeModificar;
    TabelaPrincipal.Modifica;
    HabilitaEdicao;
  finally
    Screen.Cursor := crDefault;
  end;
  BtnSalvar.Enabled   := True;
  BtnDesistir.Enabled := True;
  StatusTabela;
end;

procedure TFormTbPorto.BtnExcluirClick(Sender: TObject);
begin
  if TabelaPrincipal.Eof then
  begin
    TabelaPrincipal.Prior;
    TabelaPrincipal.Next;
  end;
  if TabelaPrincipal.Eof then
  begin
    MessageDlg('Registro n�o encontrado !',mtError,[mbOk],0);
    exit;
  end;
  if ProcuraRestricao(TabelaPrincipal.NomeTabela,'E') then
  begin
    MessageDlg('Exclus�o n�o Permitida !',mtError,[mbOk],0);
    exit;
  end;
  if Not ConfirmaExclusao then
  begin
    MessageDlg('Exclus�o Cancelada !',mtError,[mbOk],0);
    exit;
  end;
  if TabelaPrincipal.Inclusao then
  begin
    MessageDlg('Opera��o de Inclus�o est� Ativa !'+^M+^M+'Clique em Desistir para Cancelar Inclus�o ...',mtError,[mbOk],0);
    exit;
  end
  else if TabelaPrincipal.Modificacao then
  begin
    MessageDlg('Opera��o de Modifica��o est� Ativa !',mtError,[mbOk],0);
    exit;
  end;
  if MessageDlg('Excluir Registro ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    Screen.Cursor := crHourGlass;
    try
      AntesdeExcluir;
      TabelaPrincipal.Exclui;
    finally
      DepoisdeExcluir;
      Screen.Cursor := crDefault;
      StatusTabela;
      if PageForm.PageIndex = 0 then
        TelaManutencao;
    end;
  end;
end;

procedure TFormTbPorto.BtnLocalizarClick(Sender: TObject);
begin
  Ed_Localizar(TabelaPrincipal, FormTbPorto, GridConsulta);
  StatusTabela;
  if PageForm.PageIndex = 0 then
    TelaManutencao;
end;

procedure TFormTbPorto.BtnPrimeiroClick(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    Screen.Cursor := crHourGlass;
    try
      TabelaPrincipal.First;
    finally
      Screen.Cursor := crDefault;
      StatusTabela;
      if PageForm.PageIndex = 0 then
        TelaManutencao;
    end;
  end;
end;

procedure TFormTbPorto.BtnAnteriorClick(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    TabelaPrincipal.Prior;
    if TabelaPrincipal.Bof then
      MessageDlg('In�cio dos registros!', mtInformation, [mbOk], 0);
    StatusTabela;
    if PageForm.PageIndex = 0 then
      TelaManutencao;
  end;
end;

procedure TFormTbPorto.BtnProximoClick(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    TabelaPrincipal.Next;
    if TabelaPrincipal.Eof then
      MessageDlg('Final dos registros!', mtInformation, [mbOk], 0);
    StatusTabela;
    if PageForm.PageIndex = 0 then
      TelaManutencao;
  end;
end;

procedure TFormTbPorto.BtnUltimoClick(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    try
      TabelaPrincipal.Last;
      if TabelaPrincipal.Eof then
      begin
        TabelaPrincipal.Prior;
        TabelaPrincipal.Next;
      end;
    finally
      Screen.Cursor := crDefault;
      StatusTabela;
      if PageForm.PageIndex = 0 then
        TelaManutencao;
    end;
  end;
end;

procedure TFormTbPorto.BtnRefreshClick(Sender: TObject);
begin
  if MessageDlg('Atualizar registros?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    TabelaPrincipal.AtualizaSql;
    if PageForm.PageIndex = 0 then
      TelaManutencao;
  end;
end;

procedure TFormTbPorto.BtnSalvarClick(Sender: TObject);
Var
  EInclusao, Ok: Boolean;
begin
  if Not ConfirmaGravacao then
  begin
    MessageDlg('Grava��o Cancelada !',mtError,[mbOk],0);
    exit;
  end;
  SalvarRegistro := True;
  if CamposDadosValidos(ListaCamposEd, ErroValidacao) then  // Valida��es Ok ?!
  begin
    EInclusao := TabelaPrincipal.Inclusao;
    Screen.Cursor := crHourGlass;
    try
      Ok := False;
      if EInclusao then
        if TabelaPrincipal.PesquisaRelacionados(TabelaPrincipal.NomeTabela) then
        begin
          ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd, False, True);
          if TabelaPrincipal.PesquisaRelacionados(TabelaPrincipal.NomeTabela) then
          begin
            MessageDlg('Duplicidade - Registro j� cadastrado !',mtWarning,[mbOk],0);
            exit;
          end;
        end;
      AntesdeSalvar;
      if TabelaPrincipal.Salva then
        Ok := True;
    finally
      if Ok then
        if EInclusao then
          DepoisdeIncluir
        else
          DepoisdeModificar;
      Screen.Cursor := crDefault;
    end;
    if Ok then
    begin
      BtnSalvar.Enabled   := False;
      BtnDesistir.Enabled := False;
      ErroValidacao       := False;
      TabPaginas.TabIndex := 0;
      HabilitaEdicao(False);
    end;
  end;
  SalvarRegistro := False;
  StatusTabela;
end;

procedure TFormTbPorto.BtnDesistirClick(Sender: TObject);
begin
  if TabelaPrincipal.Inclusao then
    TabelaPrincipal.ExclusaoCascata;
  TabelaPrincipal.Cancela;
  BtnSalvar.Enabled   := False;
  BtnDesistir.Enabled := False;
  ErroValidacao       := False;
  TabPaginas.TabIndex := 0;
  HabilitaEdicao(False);
  Navegando := False;
  StatusTabela;
end;

procedure TFormTbPorto.VerificaAtualizacoes;
begin
  if not BtnSalvar.Enabled then
    BtnDesistirClick(Self)
  else
    if MessageDlg('Salvar Registro ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      BtnSalvarClick(Self)
    else
      BtnDesistirClick(Self);
end;

procedure TFormTbPorto.mnu_FiltrarClick(Sender: TObject);
begin
  Ed_Filtrar(TabelaPrincipal, FormTbPorto, GridConsulta);
  StatusTabela;
  if PageForm.PageIndex = 0 then
    TelaManutencao;
end;

procedure TFormTbPorto.mnu_OrdenarClick(Sender: TObject);
begin
  Ed_Ordenar(TabelaPrincipal, FormTbPorto, GridConsulta);
  StatusTabela;
  if PageForm.PageIndex = 0 then
    TelaManutencao;
end;

procedure TFormTbPorto.mnu_OrdenarCompostoClick(Sender: TObject);
begin
  Ed_OrdenarComposto(TabelaPrincipal, FormTbPorto, GridConsulta);
  StatusTabela;
  if PageForm.PageIndex = 0 then
    TelaManutencao;
end;

procedure TFormTbPorto.mnu_ApagarColunaClick(Sender: TObject);
begin
  Ed_ApagarColuna(TabelaPrincipal, FormTbPorto, GridConsulta);
end;

procedure TFormTbPorto.mnu_QuantificarClick(Sender: TObject);
begin
  Ed_Quantificar(TabelaPrincipal, FormTbPorto, GridConsulta);
end;

procedure TFormTbPorto.mnu_TotalizarColunaClick(Sender: TObject);
begin
  Ed_TotalizarColuna(TabelaPrincipal, FormTbPorto, GridConsulta);
end;

procedure TFormTbPorto.mnu_CalcularMediaClick(Sender: TObject);
begin
  Ed_CalcularMedia(TabelaPrincipal, FormTbPorto, GridConsulta);
end;

procedure TFormTbPorto.mnu_ImprimirClick(Sender: TObject);
begin
  Ed_Imprimir(TabelaPrincipal, FormTbPorto, GridConsulta, DataSource);
end;

procedure TFormTbPorto.mnu_SalvarConsultaClick(Sender: TObject);
begin
  Ed_SalvarConsulta(TabelaPrincipal, FormTbPorto, GridConsulta, AbaConsulta, ConsultasSalvas);
end;

procedure TFormTbPorto.mnu_ExcluirConsultaClick(Sender: TObject);
begin
  Ed_ExcluirConsulta(TabelaPrincipal, FormTbPorto, GridConsulta, AbaConsulta, ConsultasSalvas);
end;

procedure TFormTbPorto.AbaConsultaClick(Sender: TObject);
begin
  Ed_AbaConsulta(TabelaPrincipal, AbaConsulta, ConsultasSalvas, GridConsulta);
  StatusTabela;
end;

procedure TFormTbPorto.TabPaginasClick(Sender: TObject);
begin
  if NoManutencao.PageIndex <> TabPaginas.TabIndex then
    NoManutencao.SetFocus;
  NoManutencao.PageIndex := TabPaginas.TabIndex;
end;

procedure TFormTbPorto.PosicionaNoCampo(Campo: TAtributo);
var
  I: Integer;
  CampoED: TCampoEdicao;
begin
  I := ListaCamposED.ProcuraCampoED(Campo);
  if I = -1 then
    Exit;
  CampoED := TCampoEdicao(ListaCamposED[I]);
  if (CampoED.Pagina <> -1) then
    TabPaginas.TabIndex := CampoED.Pagina;
  CampoED.Controle.SetFocus;
end;

procedure TFormTbPorto.ErroValidacaoCampo(MsgErro: String; Campo: TAtributo);
begin
  MessageDlg(MsgErro, mtError, [mbOk], 0);
  ErroValidacao := True;
  PosicionaNoCampo(Campo);
end;

procedure TFormTbPorto.MudaSeForUltimo;
begin
  if (NoManutencao.PageIndex <> NoManutencao.Pages.Count - 1) and
     (ActiveControl = BtnSalvar) then
    if TabPaginas.TabIndex + 1 <= TabPaginas.Tabs.Count-1 then
      TabPaginas.TabIndex := TabPaginas.TabIndex + 1;
end;

procedure TFormTbPorto.CortarImagemClick(Sender: TObject);
begin
  if ActiveControl is TDBImage then
    TDBImage(ActiveControl).CutToClipBoard;
end;

procedure TFormTbPorto.CopiarImagemClick(Sender: TObject);
begin
  if ActiveControl is TDBImage then
    TDBImage(ActiveControl).CopyToClipBoard;
end;

procedure TFormTbPorto.ColarImagemClick(Sender: TObject);
begin
  if (ActiveControl is TDBImage) and Clipboard.HasFormat(CF_PICTURE) then
  begin
    (ActiveControl as TDBImage).PasteFromClipBoard;
    if TDBImage(ActiveControl).Picture.Graphic is TBitmap then
      TDBImage(ActiveControl).DataSource.DataSet.UpdateRecord
    else
    begin
      MessageDlg('Formato Inv�lido !', mtError, [mbOk], 0);
      TDBImage(ActiveControl).DataSource.DataSet.Cancel;
    end;
  end
  else
    MessageDlg('�rea de Transfer�ncia n�o cont�m imagem !', mtError, [mbOk], 0);
end;

procedure TFormTbPorto.AbrirImagemClick(Sender: TObject);
var
  image_BD : TPicture;
begin
  if DlgAbrirImagem.Execute and FileExists(DlgAbrirImagem.FileName) and
    (ActiveControl is TDBImage) then
  begin
    image_BD := TPicture.Create();
    try
      image_BD.LoadFromFile(DlgAbrirImagem.FileName);
      Clipboard.Assign(image_BD);
      TDBImage(ActiveControl).PasteFromClipboard;
      Clipboard.Clear;
    finally
      image_BD.Free;
    end;
  end;
end;

procedure TFormTbPorto.SalvarImagemClick(Sender: TObject);
begin
  if DlgSalvarComoImagem.Execute and (ActiveControl is TDBImage) then
    TDBImage(ActiveControl).Picture.SaveToFile(DlgSalvarComoImagem.FileName);
end;

function TFormTbPorto.AbandonandoEdicao: Boolean;
begin
  Result := (ActiveControl = BtnDesistir);
end;

procedure TFormTbPorto.ChamaGridPesquisa(Sender: TObject);
Var
  I: Integer;
  CampoED: TCampoEdicao;
  Campo: TAtributo;
begin
  for I:=0 to ListaCamposED.Count-1 do
  begin
    CampoED := TCampoEdicao(ListaCamposED[I]);
    if CampoED.Controle = Sender then
    begin
      Campo := CampoED.Campo;
      Break;
    end;
  end;
  if (Campo = nil) or (Campo.Valor.ReadOnly) then exit;
  FormGridPesquisa := TFormGridPesquisa.Create(Application);
  Try
    if Sender is TXDBEdit then
      FormGridPesquisa.Atalho := TXDBEdit(Sender).ClickKey
    else if Sender is TXDBNumEdit then
      FormGridPesquisa.Atalho := TXDBNumEdit(Sender).ClickKey
    else if Sender is TXDBDateEdit then
      FormGridPesquisa.Atalho := TXDBDateEdit(Sender).ClickKey;
    FormGridPesquisa.Campo  := Campo;
    FormGridPesquisa.ShowModal;
  Finally
    FormGridPesquisa.Free;
  end;
end;

procedure TFormTbPorto.ValidaColunaGrid(Sender: TField);
var
  MsgErro : String;
  I: Integer;
  Campo: TAtributo;
begin
  if AbandonandoEdicao then
    Exit;
  for I:=0 to TTabela(Sender.DataSet).Campos.Count-1 do
  begin
    Campo := TAtributo(TTabela(Sender.DataSet).Campos[I]);
    if Campo.Valor = Sender then
      Break;
  end;
  if Campo = nil then exit;
  if not Campo.Valido(MsgErro) then
    raise Exception.Create(MsgErro);
end;

{11-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
{99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}

procedure TFormTbPorto.GridConsultaDblClick(Sender: TObject);
begin
  BtnModificarClick(Self);
end;

procedure TFormTbPorto.CodTbPortoExit(Sender: TObject);
var MsgErro : string;
begin
  if AbandonandoEdicao then
    Exit;
  if not TabGlobal.DTbPorto.CodTbPorto.Valido(MsgErro, not SalvarRegistro) then
    ErroValidacaoCampo(MsgErro, TabGlobal.DTbPorto.CodTbPorto);
  if not SalvarRegistro then
    ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd);
end;

procedure TFormTbPorto.NomePortoExit(Sender: TObject);
var MsgErro : string;
begin
  if AbandonandoEdicao then
    Exit;
  if not TabGlobal.DTbPorto.NomePorto.Valido(MsgErro, not SalvarRegistro) then
    ErroValidacaoCampo(MsgErro, TabGlobal.DTbPorto.NomePorto);
  if not SalvarRegistro then
    ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd);
end;

end.
