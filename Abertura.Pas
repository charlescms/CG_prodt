{
   Programa.: Abertura.PAS
   Copyright: Modular Software 2006
            : Todos os direitos reservados
   Site.....: http://www.xmaker.com.br
}
unit Abertura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  {$I LTab.pas}
  Tabela, db;

type
  TTabGlobal = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure CamposCalculados;
  public
    { Public declarations }
    {01-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
    DUSER_NOMES : TDUSER_NOMES;
    DUSER_GRUPOS : TDUSER_GRUPOS;
    DUSER_MENU_LATERAL : TDUSER_MENU_LATERAL;
    DUSER_MENU_SUPERIOR : TDUSER_MENU_SUPERIOR;
    DUSER_BARRA_F : TDUSER_BARRA_F;
    DUSER_TABELAS : TDUSER_TABELAS;
    DUSER_LOG : TDUSER_LOG;
    DUSER_AGENDA : TDUSER_AGENDA;
    DBoocking : TDBoocking;
    DContratoTransporte : TDContratoTransporte;
    DExportadoTransito : TDExportadoTransito;
    DProdutoContratoT : TDProdutoContratoT;
    DTbPorto : TDTbPorto;
    DTbFormaPagamento : TDTbFormaPagamento;
    DTbCondicaoCompra : TDTbCondicaoCompra;
    DClientes : TDClientes;
    DTbAtividades : TDTbAtividades;
    DTbSitClientes : TDTbSitClientes;
    DFornecedores : TDFornecedores;
    DTbCategClientes : TDTbCategClientes;
    DDivisoes : TDDivisoes;
    DTab_pais : TDTab_pais;
    DProdutos : TDProdutos;
    DFatura : TDFatura;
    DParametros : TDParametros;
    DInforme : TDInforme;
    DCERBO : TDCERBO;
    DSituacao : TDSituacao;
    DRESUMENCONTRATACION : TDRESUMENCONTRATACION;
    DOrdemCobrancaDescont : TDOrdemCobrancaDescont;
    DOrdemCobranca : TDOrdemCobranca;
    DOrdemCobrancaProdExp : TDOrdemCobrancaProdExp;
    DPREVISAO : TDPREVISAO;
    CSInfome : TCSInfome;
    procedure CalculosDBoocking(DataSet: TDataSet);
    procedure CalculosDContratoTransporte(DataSet: TDataSet);
    procedure CalculosDExportadoTransito(DataSet: TDataSet);
    procedure CalculosDProdutoContratoT(DataSet: TDataSet);
    procedure CalculosDFatura(DataSet: TDataSet);
    procedure CalculosDOrdemCobranca(DataSet: TDataSet);
    procedure CalculosDOrdemCobrancaProdExp(DataSet: TDataSet);
    {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
    procedure AbrirTabelas;
    procedure FecharTabelas(Finalizar: Boolean);
    procedure Executa_Scripts_Criacao_BD;
    procedure Executa_Scripts_Inicializacao;
    procedure Executa_Scripts_Finalizacao;
  end;

var
  TabGlobal: TTabGlobal;

implementation

{$R *.DFM}

uses Splash, BaseD, Atributo, Calculos, SelEmp, Princ, Publicas;

procedure TTabGlobal.AbrirTabelas;
var
  I, Y: Integer;
  Tabela: TTabela;
  Indexar_Tab: TList;
begin
  try
    Sistema.Conexao_i := Time;
    FormSplash := TFormSplash.Create(Application);
    FormSplash.Caption := 'Aguarde!, Inicializando Sistema...';
    FormSplash.GaugeProcesso.Min := 0;
    FormSplash.GaugeProcesso.Max := BaseDados.ListaNomeTabelas.Count;
    FormSplash.Show;
    Indexar_Tab := TList.Create;
    BaseDados.ListaNomeTabelas_DB.Clear;
    for I := 0 to Lst_Tabelas.Count - 1 do
    begin
      Tabela := TTabela(Lst_Tabelas[I]);
      FormSplash.LbTitulo.Caption := 'Verificando: ' + Tabela.Titulo;
      Application.ProcessMessages;
      if (Tabela.Owner = Self) and (not Tabela.Existe) then
      begin
        FormSplash.LbTitulo.Caption := 'Criando tabela: ' + Tabela.Titulo;
        Application.ProcessMessages;
        Tabela.CriaTabela(False);
        Indexar_Tab.Add(Tabela);
      end;
      FormSplash.GaugeProcesso.Position := FormSplash.GaugeProcesso.Position + 1;
    end;
    FormSplash.GaugeProcesso.Position := 0;
    if Indexar_Tab.Count > 0 then
      BaseDados.ListaNomeTabelas_DB.Clear;
    for I := 0 to Indexar_Tab.Count - 1 do
    begin
      FormSplash.LbTitulo.Caption := 'Criando �ndices: ' + Tabela.Titulo;
      Application.ProcessMessages;
      TTabela(Indexar_Tab[I]).Indexar;
      FormSplash.GaugeProcesso.Position := FormSplash.GaugeProcesso.Position + 1;
    end;
    Indexar_Tab.Free;
    FormSplash.GaugeProcesso.Position := 0;
    for I := 0 to Lst_Tabelas.Count - 1 do
    begin
      Tabela := TTabela(Lst_Tabelas[I]);
      FormSplash.LbTitulo.Caption := 'Abrindo: ' + Tabela.Titulo;
      Application.ProcessMessages;
      if (Tabela.Owner = Self) and (Tabela.Existe) then
      begin
        if Tabela.Open_Begin then
          Tabela.Abrir;
        for Y := 0 to Tabela.Campos.Count -1 do
          TAtributo(Tabela.Campos[Y]).ConfiguraMascara;
      end;
      FormSplash.GaugeProcesso.Position := FormSplash.GaugeProcesso.Position + 1;
    end;
    FormSplash.GaugeProcesso.Position := 0;
    FormSplash.GaugeProcesso.Min := 0;
    FormSplash.GaugeProcesso.Max := Lst_Procedures.Count;
    for I := 0 to Lst_Procedures.Count - 1 do
    begin
      with TSQLProcedure(Lst_Procedures[I]) do
      begin
        FormSplash.LbTitulo.Caption := 'Procedimento: ' + NomeProcedure;
        Application.ProcessMessages;
        Criar;
        FormSplash.GaugeProcesso.Position := FormSplash.GaugeProcesso.Position + 1;
      end;
    end;
    FormSplash.GaugeProcesso.Position := 0;
    FormSplash.GaugeProcesso.Min := 0;
    FormSplash.GaugeProcesso.Max := Lst_Triggers.Count;
    for I := 0 to Lst_Triggers.Count - 1 do
    begin
      with TSQLScript(Lst_Triggers[I]) do
      begin
        FormSplash.LbTitulo.Caption := 'Processos: ' + NomeTrigger;
        Application.ProcessMessages;
        Criar_Trigger;
        FormSplash.GaugeProcesso.Position := FormSplash.GaugeProcesso.Position + 1;
      end;
    end;
    Executa_Scripts_Inicializacao;
    FormSplash.Free;
    Sistema.Conexao_f := Time;
  except
    on Erro: Exception do
    begin
      if Assigned(FormSplash) then
        FormSplash.Free;
      MessageDlg('Erro de Inicializa��o!' + ^M+^M + Erro.Message, mtError, [mbOk], 0);
      Sistema.ErroFatal := True;
    end;
  end;
end;

procedure TTabGlobal.DataModuleCreate(Sender: TObject);
var
  I: Integer;
  Tabela: TTabela;
  Master: Boolean;
begin
  Lst_Procedures := TList.Create;
  Lst_Triggers   := TList.Create;
  {02-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  DUSER_NOMES := TDUSER_NOMES.Create(Self);
  DUSER_GRUPOS := TDUSER_GRUPOS.Create(Self);
  DUSER_MENU_LATERAL := TDUSER_MENU_LATERAL.Create(Self);
  DUSER_MENU_SUPERIOR := TDUSER_MENU_SUPERIOR.Create(Self);
  DUSER_BARRA_F := TDUSER_BARRA_F.Create(Self);
  DUSER_TABELAS := TDUSER_TABELAS.Create(Self);
  DUSER_LOG := TDUSER_LOG.Create(Self);
  DUSER_AGENDA := TDUSER_AGENDA.Create(Self);
  DBoocking := TDBoocking.Create(Self);
  DContratoTransporte := TDContratoTransporte.Create(Self);
  DExportadoTransito := TDExportadoTransito.Create(Self);
  DProdutoContratoT := TDProdutoContratoT.Create(Self);
  DTbPorto := TDTbPorto.Create(Self);
  DTbFormaPagamento := TDTbFormaPagamento.Create(Self);
  DTbCondicaoCompra := TDTbCondicaoCompra.Create(Self);
  DClientes := TDClientes.Create(Self);
  DTbAtividades := TDTbAtividades.Create(Self);
  DTbSitClientes := TDTbSitClientes.Create(Self);
  DFornecedores := TDFornecedores.Create(Self);
  DTbCategClientes := TDTbCategClientes.Create(Self);
  DDivisoes := TDDivisoes.Create(Self);
  DTab_pais := TDTab_pais.Create(Self);
  DProdutos := TDProdutos.Create(Self);
  DFatura := TDFatura.Create(Self);
  DParametros := TDParametros.Create(Self);
  DInforme := TDInforme.Create(Self);
  DCERBO := TDCERBO.Create(Self);
  DSituacao := TDSituacao.Create(Self);
  DRESUMENCONTRATACION := TDRESUMENCONTRATACION.Create(Self);
  DOrdemCobrancaDescont := TDOrdemCobrancaDescont.Create(Self);
  DOrdemCobranca := TDOrdemCobranca.Create(Self);
  DOrdemCobrancaProdExp := TDOrdemCobrancaProdExp.Create(Self);
  DPREVISAO := TDPREVISAO.Create(Self);
  CSInfome := TCSInfome.Create(Self);
  I := 0;
  if Sistema.SelecionaUsr then
  begin
    Master := Sistema.Master;
    Sistema.Master := False;
    FormSelecionaEmpresa := TFormSelecionaEmpresa.Create(Application);
    Try
      if FormSelecionaEmpresa.ShowModal = mrOk then
        I:=1
      else
        FormPrincipal.ErronoSistema := True;
    Finally
      Sistema.Master := Master;
      FormSelecionaEmpresa.Free;
    end;
  end;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  if not FormPrincipal.ErronoSistema then
  begin
    CamposCalculados;
    if I = 0 then
      AbrirTabelas;
    if BaseDados.Criou_BD then
      Executa_Scripts_Criacao_BD;
  end;
end;

procedure TTabGlobal.DataModuleDestroy(Sender: TObject);
begin
  Lst_Procedures.Free;
  Lst_Triggers.Free;
  FecharTabelas(True);
end;

procedure TTabGlobal.FecharTabelas(Finalizar: Boolean);
var
  I: Integer;
  Tabela: TTabela;
begin
  try
    Executa_Scripts_Finalizacao;
    if Lst_Tabelas = Nil then
      exit;
    for I := (Lst_Tabelas.Count - 1) downto 0 do
    begin
      Tabela := TTabela(Lst_Tabelas[I]);
      if Tabela.Owner = Self then
      begin
        if Tabela.Active then
          Tabela.Close;
        if Finalizar then
          Tabela.Free;
      end;
    end;
    if Finalizar and (Lst_Tabelas.Count = 0) then
    begin
      Lst_Tabelas.Free;
      Lst_Tabelas := nil;
    end;
  except
    on Erro: Exception do
    begin
      MessageDlg('Erro: ' + Erro.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TTabGlobal.Executa_Scripts_Criacao_BD;
var
  I: Integer;
begin
  {05-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
  for I:=0 to Lst_Tabelas.Count-1 do
    if TTabela(Lst_Tabelas[I]).TableType = ttTable then
      TTabela(Lst_Tabelas[I]).CriaForeignKeys;
end;

procedure TTabGlobal.Executa_Scripts_Inicializacao;
begin
  {06-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

procedure TTabGlobal.Executa_Scripts_Finalizacao;
begin
  {07-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

procedure TTabGlobal.CamposCalculados;
begin
  {03-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
  DBoocking.OnCalcFields := CalculosDBoocking;
  DContratoTransporte.OnCalcFields := CalculosDContratoTransporte;
  DExportadoTransito.OnCalcFields := CalculosDExportadoTransito;
  DProdutoContratoT.OnCalcFields := CalculosDProdutoContratoT;
  DFatura.OnCalcFields := CalculosDFatura;
  DOrdemCobranca.OnCalcFields := CalculosDOrdemCobranca;
  DOrdemCobrancaProdExp.OnCalcFields := CalculosDOrdemCobrancaProdExp;
  {99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}
end;

{04-In�cio do Bloco Modular. Modifica��es n�o ser�o preservadas}
procedure TTabGlobal.CalculosDBoocking(DataSet: TDataSet);
begin
  DBoocking.SALDO.Conteudo := CalculaDBoocking_SALDO(Self);
end;

procedure TTabGlobal.CalculosDContratoTransporte(DataSet: TDataSet);
begin
end;

procedure TTabGlobal.CalculosDExportadoTransito(DataSet: TDataSet);
begin
end;

procedure TTabGlobal.CalculosDProdutoContratoT(DataSet: TDataSet);
begin
end;

procedure TTabGlobal.CalculosDFatura(DataSet: TDataSet);
begin
end;

procedure TTabGlobal.CalculosDOrdemCobranca(DataSet: TDataSet);
begin
end;

procedure TTabGlobal.CalculosDOrdemCobrancaProdExp(DataSet: TDataSet);
begin
  DOrdemCobrancaProdExp.COMISAOSFATURA_EX.Conteudo := CalculaDOrdemCobrancaProdExp_COMISAOSFATURA_EX(Self);
  DOrdemCobrancaProdExp.VALORCONVERTIDO_EX.Conteudo := CalculaDOrdemCobrancaProdExp_VALORCONVERTIDO_EX(Self);
end;

{99-Final do Bloco Modular. Modifica��es n�o ser�o preservadas}

end.
