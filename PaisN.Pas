{
   Programa.: PaisN.PAS
   Copyright: Modular Software 2006
            : Todos os direitos reservados
   Site.....: http://www.xmaker.com.br
}
unit PaisN;

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
  TFormPaisN = class(TForm)
    {01-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
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
    BtnRelac_1: TBitBtn;
    BtnRelac_2: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnTabela: TSpeedButton;
    BtnUltimo: TSpeedButton;
    ColarImagem: TMenuItem;
    CopiarImagem: TMenuItem;
    CortarImagem: TMenuItem;
    DataSource: TDataSource;
    Divisao_sup: TPanel;
    DlgAbrirImagem: TOpenDialog;
    DlgSalvarComoImagem: TSaveDialog;
    GridConsulta: TDBGrid;
    ID: TXDBEdit;
    Img_Form: TImage;
    Img_Tabela: TImage;
    LbcID: TLabel;
    LbcNOME: TLabel;
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
    NOME: TXDBEdit;
    PagePrincipal: TPageControl;
    Pagina0: TScrollBox;
    Pagina1: TScrollBox;
    PgPagina1: TScrollBox;
    PnInfConsulta: TPanel;
    PnSalva: TPanel;
    PnSuperior: TPanel;
    PopConsulta: TPopupMenu;
    PopRelacionados: TPopupMenu;
    SalvarImagem: TMenuItem;
    TabConsulta: TTabSheet;
    TabManutencao: TTabSheet;
    TabPaginas: TTabSet;
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
    procedure IDExit(Sender: TObject);
    procedure NOMEExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnDesistirClick(Sender: TObject);
    procedure GridConsultaDblClick(Sender: TObject);
    procedure PagePrincipalChange(Sender: TObject);
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
    procedure BtnAjudaClick(Sender: TObject);
    procedure BtnRelac_1Click(Sender: TObject);
    procedure PopRelacionadosClick(Sender: TObject);
    procedure ChamaGridPesquisa(Sender: TObject);
    procedure ValidaColunaGrid(Sender: TField);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnModificarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnTabelaClick(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
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
    procedure StatusTabela;
    function AbreTabelas: Boolean;
    procedure MudaSeForUltimo;
    function AbandonandoEdicao: Boolean;
    procedure TelaManutencao;
    procedure TelaConsulta;
    procedure AtribuiValoresPadrao;
    procedure PosicionaNoCampo(Campo: TAtributo);
    procedure VerificaAtualizacoes;
    procedure ErroValidacaoCampo(MsgErro: String; Campo: TAtributo);
    procedure Localizar(Sender: TObject);
    procedure Incluir(Sender: TObject);
    procedure Modificar(Sender: TObject);
    procedure Excluir(Sender: TObject);
    procedure Primeiro(Sender: TObject);
    procedure Anterior(Sender: TObject);
    procedure Proximo(Sender: TObject);
    procedure Ultimo(Sender: TObject);
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
    procedure HabilitaEdicao(Valor: Boolean = true);
  public
    { Public declarations }
    {03-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
    TabelaPrincipal: TTabela;
    {04-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  end;

var
  FormPaisN: TFormPaisN;
  LastControl: TWinControl;

implementation

{$R *.DFM}

uses Publicas, Princ, Rotinas, RotinaEd, Abertura, GridPesquisa;

procedure TFormPaisN.FormShow(Sender: TObject);
Var
  I: Integer;
begin
  {05-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  TabelaPrincipal    := TabGlobal.DTAB_PAIS;
  TituloModulo       := 'Cadastro de Pais';
  Caption            := TituloModulo;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  FormPrincipal.PnImagemFundo.Visible := False;
  Sistema.JanelasMDI := Sistema.JanelasMDI + 01;
  if Sistema.JanelasMDI < 1 then   // Pouco prov�vel + ...
    Sistema.JanelasMDI := 1;
  Navegando          := False;
  DataSource.DataSet := TabelaPrincipal;
  ListaCamposED      := TListaCampos.Create;
  ConsultasSalvas    := TList.Create;
  PaginaIni          := 0;
  ErroValidacao      := False;
  TabPaginas.TabIndex:= 0;
  {06-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  AtribuiCampoEdicao(TabGlobal.DTAB_PAIS, TabGlobal.DTAB_PAIS.NOME, -2, NOMEExit, Nil, ListaCamposEd, FormPaisN, DataSource, ChamaGridPesquisa);
  AtribuiCampoEdicao(TabGlobal.DTAB_PAIS, TabGlobal.DTAB_PAIS.ID, -1, IDExit, Nil, ListaCamposEd, FormPaisN, DataSource, ChamaGridPesquisa);
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  CamposCalculados;
  if not AbreTabelas then exit;
  AjustaColunasConsulta(TabelaPrincipal);
  TabelaPrincipal.AtualizaSql;
  StatusTabela;
  TabelaPrincipal.First;
  FormResize(Self);
  BtnSalvar.Enabled   := False;
  BtnDesistir.Enabled := False;
  InicializaConsultasSalvas(TabelaPrincipal, AbaConsulta, ConsultasSalvas);
  PagePrincipal.ActivePageIndex := 1;
  NoManutencao.PageIndex        := 0;
  PagePrincipal.OnChange        := PagePrincipalChange;
  TelaConsulta;
  GridConsulta.SetFocus;
end;

function TFormPaisN.AbreTabelas: Boolean;
begin
  {07-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  Result := True;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

procedure TFormPaisN.CamposCalculados;
begin
  {08-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

procedure TFormPaisN.HabilitaEdicao(Valor: Boolean = true);
var
  I: Integer;
  Comp: TComponent;
  CampoED: TCampoEdicao;
begin
  for I := 0 to 10 do
  begin
    Comp := FindComponent('Pagina' + IntToStr(I));
    if Comp <> nil then
      TScrollBox(Comp).Enabled := Valor;
  end;
  if Valor then
    for I:=0 to ListaCamposED.Count-1 do
    begin
      CampoED := TCampoEdicao(ListaCamposED[I]);
      if (CampoED.Controle.TabOrder = 0) and (CampoED.Controle.CanFocus) then
      begin
        CampoED.Controle.SetFocus;
        Break;
      end;
    end;
end;

function TFormPaisN.ConfirmaInclusao: Boolean;
begin
  Result := True;
end;

function TFormPaisN.ConfirmaModificacao: Boolean;
begin
  Result := True;
end;

function TFormPaisN.ConfirmaExclusao: Boolean;
begin
  Result := True;
end;

function TFormPaisN.ConfirmaGravacao: Boolean;
begin
  Result := True;
end;

procedure TFormPaisN.TelaManutencao;
begin
{
  if (TabelaPrincipal.Inclusao) or
     (TabelaPrincipal.Modificacao) then
    HabilitaEdicao
  else
    HabilitaEdicao(False);
  ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd);
  TabelaPrincipal.AtribuiRelacionamentos;
}

  AtribuiDataSourceCampos(ListaCamposEd, DataSource);
  PagePrincipal.TABINDEX := 0;
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

procedure TFormPaisN.TelaConsulta;
begin
  AtribuiDataSourceCampos(ListaCamposEd, Nil);
  HabilitaEdicao(False);
  PagePrincipal.TABINDEX := 1;
  GridConsulta.DataSource := DataSource;
  BtnTabela.Caption := 'Formul�rio';
  BtnTabela.Hint    := 'Visualizar registros em forma de formul�rio';
  BtnTabela.Glyph   := Img_Form.Picture.Bitmap;
  BtnTabela.Tag     := 1;
  Divisao_sup.Visible   := False;
  GridConsulta.SetFocus;
end;

procedure TFormPaisN.AtribuiValoresPadrao;
begin
  ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd, True);
  TabelaPrincipal.AtribuiRelacionamentos;

end;

procedure TFormPaisN.AntesdeSalvar;
begin

end;

procedure TFormPaisN.AntesdeIncluir;
begin

end;

procedure TFormPaisN.AntesdeModificar;
begin

end;

procedure TFormPaisN.AntesdeExcluir;
begin

end;

procedure TFormPaisN.DepoisdeIncluir;
begin

end;

procedure TFormPaisN.DepoisdeModificar;
begin

end;

procedure TFormPaisN.DepoisdeExcluir;
begin

end;

procedure TFormPaisN.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if BtnSalvar.Enabled then
    TabelaPrincipal.Cancela;
end;

procedure TFormPaisN.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  I: Integer;
begin

  DesabilitaFuncoesEd;
  ListaCamposED.Free;
  for I := 0 to ConsultasSalvas.Count - 1 do
    TConsultasSalvas(ConsultasSalvas[I]).Free;
  ConsultasSalvas.Free;
  Action := caFree;
  FormPaisN := nil;
end;

procedure TFormPaisN.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPaisN.BtnAjudaClick(Sender: TObject);
begin
  application.helpcommand(Help_Finder,HelpContext);
end;

procedure TFormPaisN.StatusTabela;
begin
//  LbTituloForm.Caption := TituloModulo + '- [ Ordem: '+TabelaPrincipal.TituloIndice+' ]';
end;

procedure TFormPaisN.FormResize(Sender: TObject);
begin
//  BtnAjuda.Left  := ShapeSup.Width - 37;
//  BtnFechar.Left := ShapeSup.Width - 19;
end;

procedure TFormPaisN.FormActivate(Sender: TObject);
begin
  {
    Inicializa Menu Manuten��o e Barra de Ferramentas
  }
//  foi retirado
//  FormPrincipal.BarraPrincipal.Visible := True;
  FormPrincipal.BtnLocalizar.Visible := True;
  FormPrincipal.BtnIncluir.Visible   := True;
  FormPrincipal.BtnModificar.Visible := True;
  FormPrincipal.BtnExcluir.Visible   := True;
  FormPrincipal.BtnPrimeiro.Visible  := True;
  FormPrincipal.BtnAnterior.Visible  := True;
  FormPrincipal.BtnProximo.Visible   := True;
  FormPrincipal.BtnUltimo.Visible    := True;
  FormPrincipal.Manutencao.Enabled   := True;
  FormPrincipal.BtnLocalizar.OnClick := Localizar;
  FormPrincipal.Localizar.OnClick    := Localizar;
  FormPrincipal.BtnIncluir.OnClick   := Incluir;
  FormPrincipal.Incluir.OnClick      := Incluir;
  FormPrincipal.BtnModificar.OnClick := Modificar;
  FormPrincipal.Modificar.OnClick    := Modificar;
  FormPrincipal.BtnExcluir.OnClick   := Excluir;
  FormPrincipal.Excluir.OnClick      := Excluir;
  FormPrincipal.Primeiro.OnClick     := Primeiro;
  FormPrincipal.BtnPrimeiro.OnClick  := Primeiro;
  FormPrincipal.Anterior.OnClick     := Anterior;
  FormPrincipal.BtnAnterior.OnClick  := Anterior;
  FormPrincipal.Proximo.OnClick      := Proximo;
  FormPrincipal.BtnProximo.OnClick   := Proximo;
  FormPrincipal.Ultimo.OnClick       := Ultimo;
  FormPrincipal.BtnUltimo.OnClick    := Ultimo;
  {
    Inicializa Menu Consulta
  }
  FormPrincipal.Consulta.Enabled         := True;
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
end;

procedure TFormPaisN.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormPaisN.BtnSalvarClick(Sender: TObject);
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
    BtnSalvar.Enabled   := False;
    BtnDesistir.Enabled := False;
    PagePrincipal.ActivePageIndex := 1;
    TelaConsulta;
    if EInclusao then
    begin
      if not Sistema.Rede then
      begin
        TabelaPrincipal.AtualizaSql;
        StatusTabela;
      end;
      Ultimo(Self);
    end;
    ErroValidacao := False;
    GridConsulta.SetFocus;
  end;
  SalvarRegistro := False;
end;

procedure TFormPaisN.BtnDesistirClick(Sender: TObject);
begin
  if TabelaPrincipal.Inclusao then
    TabelaPrincipal.ExclusaoCascata;
  TabelaPrincipal.Cancela;
  BtnSalvar.Enabled   := False;
  BtnDesistir.Enabled := False;
  ErroValidacao       := False;
  if not Navegando then
  begin
    PagePrincipal.ActivePageIndex := 1;
    TelaConsulta;
    GridConsulta.SetFocus;
  end
  else
    HabilitaEdicao(False);
  Navegando := False;
end;

procedure TFormPaisN.GridConsultaDblClick(Sender: TObject);
begin
  if TabelaPrincipal.Eof then
    Incluir(Self)
  else
    Modificar(Self);
end;

procedure TFormPaisN.VerificaAtualizacoes;
begin
  if not BtnSalvar.Enabled then
    BtnDesistirClick(Self)
  else
    if MessageDlg('Salvar Registro ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      BtnSalvarClick(Self)
    else
      BtnDesistirClick(Self);
end;

procedure TFormPaisN.Localizar(Sender: TObject);
begin
  Ed_Localizar(TabelaPrincipal, FormPaisN, GridConsulta);
end;

procedure TFormPaisN.Incluir(Sender: TObject);
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
  PagePrincipal.ActivePageIndex := 0;
  TabPaginas.TabIndex:= 0;
  TelaManutencao;
  AntesdeIncluir;
  TabelaPrincipal.Inclui(ListaCamposED);
  BtnSalvar.Enabled   := True;
  BtnDesistir.Enabled := True;
  HabilitaEdicao;
  AtribuiValoresPadrao;
end;

procedure TFormPaisN.Modificar(Sender: TObject);
begin
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
  PagePrincipal.ActivePageIndex := 0;
  TabPaginas.TabIndex:= 0;
  TelaManutencao;
  Screen.Cursor := crHourGlass;
  try
    if Sistema.Rede then
      TabelaPrincipal.Refresh;
    AntesdeModificar;
    TabelaPrincipal.Modifica;
    HabilitaEdicao;
  finally
    Screen.Cursor := crDefault;
  end;
  BtnSalvar.Enabled   := True;
  BtnDesistir.Enabled := True;
end;

procedure TFormPaisN.Excluir(Sender: TObject);
begin
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
      if Sistema.Rede then
        TabelaPrincipal.Refresh;
      AntesdeExcluir;
      TabelaPrincipal.Exclui;
    finally
      DepoisdeExcluir;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFormPaisN.Primeiro(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    Screen.Cursor := crHourGlass;
    try
      if Sistema.Rede then
      begin
        TabelaPrincipal.AtualizaSql;
        StatusTabela;
      end;
      TabelaPrincipal.First;
      if PagePrincipal.ActivePageIndex = 0 then
        TelaManutencao;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFormPaisN.Anterior(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    TabelaPrincipal.Prior;
    if PagePrincipal.ActivePageIndex = 0 then
      TelaManutencao;
  end;
end;

procedure TFormPaisN.Proximo(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    TabelaPrincipal.Next;
    if PagePrincipal.ActivePageIndex = 0 then
      TelaManutencao;
  end;
end;

procedure TFormPaisN.Ultimo(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    try
      if Sistema.Rede then
      begin
        TabelaPrincipal.AtualizaSql;
        StatusTabela;
      end;
      TabelaPrincipal.Last;
      if TabelaPrincipal.Eof then
      begin
        TabelaPrincipal.Prior;
        TabelaPrincipal.Next;
      end;
      if PagePrincipal.ActivePageIndex = 0 then
        TelaManutencao;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFormPaisN.mnu_FiltrarClick(Sender: TObject);
begin
  Ed_Filtrar(TabelaPrincipal, FormPaisN, GridConsulta);
  StatusTabela;
end;

procedure TFormPaisN.mnu_OrdenarClick(Sender: TObject);
begin
  Ed_Ordenar(TabelaPrincipal, FormPaisN, GridConsulta);
  StatusTabela;
end;

procedure TFormPaisN.mnu_OrdenarCompostoClick(Sender: TObject);
begin
  Ed_OrdenarComposto(TabelaPrincipal, FormPaisN, GridConsulta);
  StatusTabela;
end;

procedure TFormPaisN.mnu_ApagarColunaClick(Sender: TObject);
begin
  Ed_ApagarColuna(TabelaPrincipal, FormPaisN, GridConsulta);
end;

procedure TFormPaisN.mnu_QuantificarClick(Sender: TObject);
begin
  Ed_Quantificar(TabelaPrincipal, FormPaisN, GridConsulta);
end;

procedure TFormPaisN.mnu_TotalizarColunaClick(Sender: TObject);
begin
  Ed_TotalizarColuna(TabelaPrincipal, FormPaisN, GridConsulta);
end;

procedure TFormPaisN.mnu_CalcularMediaClick(Sender: TObject);
begin
  Ed_CalcularMedia(TabelaPrincipal, FormPaisN, GridConsulta);
end;

procedure TFormPaisN.mnu_ImprimirClick(Sender: TObject);
begin
  Ed_Imprimir(TabelaPrincipal, FormPaisN, GridConsulta, DataSource);
end;

procedure TFormPaisN.mnu_SalvarConsultaClick(Sender: TObject);
begin
  Ed_SalvarConsulta(TabelaPrincipal, FormPaisN, GridConsulta, AbaConsulta, ConsultasSalvas);
end;

procedure TFormPaisN.mnu_ExcluirConsultaClick(Sender: TObject);
begin
  Ed_ExcluirConsulta(TabelaPrincipal, FormPaisN, GridConsulta, AbaConsulta, ConsultasSalvas);
end;

procedure TFormPaisN.PagePrincipalChange(Sender: TObject);
begin
  if PagePrincipal.ActivePageIndex = 0 then
  begin
    TabPaginas.TabIndex := PaginaIni;
    TelaManutencao;
  end
  else if PagePrincipal.ActivePageIndex = 1 then
  begin
    VerificaAtualizacoes;
    if Not ErroValidacao then
    begin
      TelaConsulta;
      GridConsulta.SetFocus;
    end
    else
      PagePrincipal.ActivePageIndex := 0;
  end;
end;

procedure TFormPaisN.AbaConsultaClick(Sender: TObject);
begin
  Ed_AbaConsulta(TabelaPrincipal, AbaConsulta, ConsultasSalvas, GridConsulta);
  StatusTabela;
end;

procedure TFormPaisN.TabPaginasClick(Sender: TObject);
begin
  if NoManutencao.PageIndex <> TabPaginas.TabIndex then
    NoManutencao.SetFocus;
  NoManutencao.PageIndex := TabPaginas.TabIndex;
end;

procedure TFormPaisN.PosicionaNoCampo(Campo: TAtributo);
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
  PagePrincipal.ActivePageIndex := 0;
  CampoED.Controle.SetFocus;
end;

procedure TFormPaisN.ErroValidacaoCampo(MsgErro: String; Campo: TAtributo);
begin
  MessageDlg(MsgErro, mtError, [mbOk], 0);
  ErroValidacao := True;
  PosicionaNoCampo(Campo);
end;

procedure TFormPaisN.MudaSeForUltimo;
begin
  if (NoManutencao.PageIndex <> NoManutencao.Pages.Count - 1) and
     (ActiveControl = BtnSalvar) then
    if TabPaginas.TabIndex + 1 <= TabPaginas.Tabs.Count-1 then
      TabPaginas.TabIndex := TabPaginas.TabIndex + 1;
end;

procedure TFormPaisN.CortarImagemClick(Sender: TObject);
begin
  if ActiveControl is TDBImage then
    TDBImage(ActiveControl).CutToClipBoard;
end;

procedure TFormPaisN.CopiarImagemClick(Sender: TObject);
begin
  if ActiveControl is TDBImage then
    TDBImage(ActiveControl).CopyToClipBoard;
end;

procedure TFormPaisN.ColarImagemClick(Sender: TObject);
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

procedure TFormPaisN.AbrirImagemClick(Sender: TObject);
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

procedure TFormPaisN.SalvarImagemClick(Sender: TObject);
begin
  if DlgSalvarComoImagem.Execute and (ActiveControl is TDBImage) then
    TDBImage(ActiveControl).Picture.SaveToFile(DlgSalvarComoImagem.FileName);
end;

function TFormPaisN.AbandonandoEdicao: Boolean;
begin
  Result := (ActiveControl = BtnDesistir) or (ActiveControl = PagePrincipal);
end;

procedure TFormPaisN.BtnRelac_1Click(Sender: TObject);
var
  Pt: TPoint;

  procedure AddMenuItem(Menu:TPopupMenu; ItemName:string; Name:string; Enable:Boolean; ImgIndex: Integer; Tag: Integer);
  var
    NewMenuItem: TMenuItem;
  begin
    NewMenuItem         := TMenuItem.Create(Application);
    NewMenuItem.Name    := Name;
    NewMenuItem.Caption := ItemName;
    NewMenuItem.Enabled := Enable;
    NewMenuItem.OnClick := PopRelacionadosClick;
    NewMenuItem.Tag     := Tag;
    if ImgIndex <> -1 then
      NewMenuItem.ImageIndex := ImgIndex;
    Menu.Items.Add(NewMenuItem);
  end;

begin
  PopRelacionados.Items.Clear;
  {09-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  GetCursorPos(Pt);
  PopRelacionados.Popup(Pt.X, Pt.Y);
end;

procedure TFormPaisN.PopRelacionadosClick(Sender: TObject);
var
  MenuItem: TMenuItem;
begin
  MenuItem := TMenuItem(Sender);
  {10-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

procedure TFormPaisN.ChamaGridPesquisa(Sender: TObject);
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

procedure TFormPaisN.ValidaColunaGrid(Sender: TField);
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

procedure TFormPaisN.BtnIncluirClick(Sender: TObject);
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
  PagePrincipal.ActivePageIndex := 0;
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

procedure TFormPaisN.BtnModificarClick(Sender: TObject);
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
  PagePrincipal.ActivePageIndex := 0;
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

procedure TFormPaisN.BtnExcluirClick(Sender: TObject);
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
      PagePrincipal.ActivePageIndex := 0;
      TabelaPrincipal.Exclui;
    finally
      DepoisdeExcluir;
      Screen.Cursor := crDefault;
      StatusTabela;
      IF PagePrincipal.TABINDEX = 0 THEN
        TelaManutencao;
    end;
  end;

end;

procedure TFormPaisN.BtnTabelaClick(Sender: TObject);
begin
  if BtnTabela.Tag = 0 then
    TelaConsulta
  else
    TelaManutencao;
  StatusTabela;

end;

procedure TFormPaisN.BtnLocalizarClick(Sender: TObject);
begin
  Ed_Localizar(TabelaPrincipal, FormPaisN, GridConsulta);
  StatusTabela;
  IF PagePrincipal.TABINDEX = 0 THEN
    TelaManutencao;

end;

procedure TFormPaisN.BtnPrimeiroClick(Sender: TObject);
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
      IF PagePrincipal.TABINDEX = 0 THEN
        TelaManutencao;
    end;
  end;

end;

procedure TFormPaisN.BtnAnteriorClick(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    TabelaPrincipal.Prior;
    if TabelaPrincipal.Bof then
      MessageDlg('In�cio dos registros!', mtInformation, [mbOk], 0);
    StatusTabela;
    IF PagePrincipal.TABINDEX = 0 THEN
      TelaManutencao;
  end;

end;

procedure TFormPaisN.BtnProximoClick(Sender: TObject);
begin
  Navegando := True;
  VerificaAtualizacoes;
  if not ErroValidacao then
  begin
    TabelaPrincipal.Next;
    if TabelaPrincipal.Eof then
      MessageDlg('Final dos registros!', mtInformation, [mbOk], 0);
    StatusTabela;
    IF PagePrincipal.TABINDEX = 0 THEN
      TelaManutencao;
  end;

end;

procedure TFormPaisN.BtnUltimoClick(Sender: TObject);
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
      IF PagePrincipal.TABINDEX = 0 THEN
        TelaManutencao;
    end;
  end;

end;

procedure TFormPaisN.BtnRefreshClick(Sender: TObject);
begin
  if MessageDlg('Atualizar registros?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    TabelaPrincipal.AtualizaSql;
    IF PagePrincipal.TABINDEX = 0 THEN
      TelaManutencao;
  end;

end;

procedure TFormPaisN.IDExit(Sender: TObject);
var MsgErro : string;
begin
  if AbandonandoEdicao then
    Exit;
  if not TabGlobal.DTAB_PAIS.ID.Valido(MsgErro, not SalvarRegistro) then
    ErroValidacaoCampo(MsgErro, TabGlobal.DTAB_PAIS.ID);
  if not SalvarRegistro then
    ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd);
end;

procedure TFormPaisN.NOMEExit(Sender: TObject);
var MsgErro : string;
begin
  if AbandonandoEdicao then
    Exit;
  if not TabGlobal.DTAB_PAIS.NOME.Valido(MsgErro, not SalvarRegistro) then
    ErroValidacaoCampo(MsgErro, TabGlobal.DTAB_PAIS.NOME);
  if not SalvarRegistro then
    ExecutaPreValidacoes(TabelaPrincipal, Self, ListaCamposEd);
end;

end.
