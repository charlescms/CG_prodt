{
 Classe da tabela: Informe_Cons - Informe Consulta
}

unit DInforme_Cons;

interface

{$I Princ.inc}

uses SysUtils, StdCtrls, Tabela, BaseD, classes, Atributo, Estrutur,
     AtrL0008,
     {$IFDEF IBX}
     IBDatabase, IBSQL, IB, IBQuery, IBUpdateSQL,
     {$ELSE}
     XSEngine,
     {$ENDIF}
     DB, Dialogs;

type
  TDInforme_Cons = class(TTabela)
  public
    Contrato: TDInforme_Cons_Contrato;
    NomeMix: TDInforme_Cons_NomeMix;
    RAZAO: TDInforme_Cons_RAZAO;
    NOME: TDInforme_Cons_NOME;
    C_C: TDInforme_Cons_C_C;
    FormPago: TDInforme_Cons_FormPago;
    QuantidadeTotal: TDInforme_Cons_QuantidadeTotal;
    FECHA_EMB: TDInforme_Cons_FECHA_EMB;
    PrecoFOB: TDInforme_Cons_PrecoFOB;
    PrecoFOBTotal: TDInforme_Cons_PrecoFOBTotal;
    PrecoSCC: TDInforme_Cons_PrecoSCC;
    ValorSCCTotal: TDInforme_Cons_ValorSCCTotal;
    NAVIO_BUQ: TDInforme_Cons_NAVIO_BUQ;
    Quantidade: TDInforme_Cons_Quantidade;
    Navio: TDInforme_Cons_Navio;
    QuantidadeExp: TDInforme_Cons_QuantidadeExp;
    Valor: TDInforme_Cons_Valor;
    DataEmbarque: TDInforme_Cons_DataEmbarque;
    Fatura: TDInforme_Cons_Fatura;
    ETADestino: TDInforme_Cons_ETADestino;
    OBS: TDInforme_Cons_OBS;
    ID: TDInforme_Cons_ID;
    FORCOD: TDInforme_Cons_FORCOD;
    constructor Create(AOwner: TComponent); override;
    procedure CriaForeignKeys; override;
    function PodeExcluir: Boolean; override;
    procedure ExclusaoCascata; override;
    function PesquisaRelacionados(Tabela, Campo: String; var Retorno: Variant; CampoFoco: String = ''): Boolean; overload; override;
    function PesquisaRelacionados(Tabela: String): Boolean; overload; override;
    procedure CalculaCampos; override;
    procedure Parametros(Tabela: TTabela); override;
    procedure AtribuiRelacionamentos(Atribui: Boolean = True); override;
    procedure AtribuiFiltroMestre(Atribui: Boolean = True; Atualiza: Boolean = True); override;
    procedure AtribuiMestre(DataSet: TDataSet); override;
    procedure ProcessoDireto1(DataSet: TDataSet);
    procedure ProcessoDireto2(DataSet: TDataSet);
    procedure AtualizaCalculados(DataSet: TDataSet);
    procedure ProcessoInverso1(DataSet: TDataSet);
    procedure ProcessoInverso2(DataSet: TDataSet);
  end;

implementation

uses Publicas, Validar, Rotinas, Abertura, Calculos, RotinaEd;

constructor TDInforme_Cons.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  NomeTabela       := 'ContratoTransporte';
  Titulo           := 'Informe Consulta';
  Name             := 'DInforme_Cons';
  Database         := BaseDados.BD_Base_Dados;
  {$IFDEF IBX}
  Transaction      := BaseDados.TRS_BD_Base_Dados;
  UpdateSql        := TIBUpdateSQL.Create(AOwner);
  {$ELSE}
  RequestLive      := True;
  AutoRefresh      := True;
  CachedUpdates    := True;
  UpdateSql        := TXSQLUpdateSQL.Create(AOwner);
  DatabaseName     := BaseDados.BD_Base_Dados.DatabaseName;
  {$ENDIF}
  Local            := False;
  Open_begin       := False;
  Versao           := 6;
  UsarGenerator    := True;
  TableType        := ttTable;
  DataSource.Name  := 'DsInforme_Cons';
  with UpdateSql do
  begin
    Name           := 'UpdSql_Informe_Cons';
    // Exclus�o de Registro
    DeleteSQL.Add('delete from ContratoTransporte');
    DeleteSQL.Add('where');
    DeleteSQL.Add('  Contrato = :OLD_Contrato');
    // Inser��o de Registro
    InsertSQL.Add('insert into ContratoTransporte');
    InsertSQL.Add('  (');
    InsertSQL.Add('  Contrato,');
    InsertSQL.Add('  NomeMix,');
    InsertSQL.Add('  C_C,');
    InsertSQL.Add('  QuantidadeTotal,');
    InsertSQL.Add('  DataEmbarque,');
    InsertSQL.Add('  PrecoFOBTotal,');
    InsertSQL.Add('  ValorSCCTotal,');
    InsertSQL.Add('  ID,');
    InsertSQL.Add('  FORCOD');
    InsertSQL.Add('  )');
    InsertSQL.Add('values');
    InsertSQL.Add('  (');
    InsertSQL.Add('  :Contrato,');
    InsertSQL.Add('  :NomeMix,');
    InsertSQL.Add('  :C_C,');
    InsertSQL.Add('  :QuantidadeTotal,');
    InsertSQL.Add('  :DataEmbarque,');
    InsertSQL.Add('  :PrecoFOBTotal,');
    InsertSQL.Add('  :ValorSCCTotal,');
    InsertSQL.Add('  :ID,');
    InsertSQL.Add('  :FORCOD');
    InsertSQL.Add('  )');
    // Modifica��o de Registro
    ModifySQL.Add('update ContratoTransporte');
    ModifySQL.Add('set');
    ModifySQL.Add('  Contrato = :Contrato,');
    ModifySQL.Add('  NomeMix = :NomeMix,');
    ModifySQL.Add('  C_C = :C_C,');
    ModifySQL.Add('  QuantidadeTotal = :QuantidadeTotal,');
    ModifySQL.Add('  DataEmbarque = :DataEmbarque,');
    ModifySQL.Add('  PrecoFOBTotal = :PrecoFOBTotal,');
    ModifySQL.Add('  ValorSCCTotal = :ValorSCCTotal,');
    ModifySQL.Add('  ID = :ID,');
    ModifySQL.Add('  FORCOD = :FORCOD');
    ModifySQL.Add('where');
    ModifySQL.Add('  Contrato = :OLD_Contrato');
    // Refresh de Registro
    RefreshSQL.Add('Select');
    RefreshSQL.Add('  Informe_Cons.Contrato AS Contrato,');
    RefreshSQL.Add('  Informe_Cons.NomeMix AS NomeMix,');
    RefreshSQL.Add('  Fornecedores.RAZAO AS RAZAO,');
    RefreshSQL.Add('  TAB_PAIS.NOME AS NOME,');
    RefreshSQL.Add('  Informe_Cons.C_C AS C_C,');
    RefreshSQL.Add('  PrudutoContratoT.FormPago AS FormPago,');
    RefreshSQL.Add('  Informe_Cons.QuantidadeTotal AS QuantidadeTotal,');
    RefreshSQL.Add('  Informe_Cons.DataEmbarque AS FECHA_EMB,');
    RefreshSQL.Add('  PrudutoContratoT.PrecoFOB AS PrecoFOB,');
    RefreshSQL.Add('  Informe_Cons.PrecoFOBTotal AS PrecoFOBTotal,');
    RefreshSQL.Add('  PrudutoContratoT.PrecoSCC AS PrecoSCC,');
    RefreshSQL.Add('  Informe_Cons.ValorSCCTotal AS ValorSCCTotal,');
    RefreshSQL.Add('  Boocking.Navio AS NAVIO_BUQ,');
    RefreshSQL.Add('  Boocking.Quantidade AS Quantidade,');
    RefreshSQL.Add('  ExportadoTransito.Navio AS Navio,');
    RefreshSQL.Add('  ExportadoTransito.QuantidadeExp AS QuantidadeExp,');
    RefreshSQL.Add('  ExportadoTransito.Valor AS Valor,');
    RefreshSQL.Add('  ExportadoTransito.DataEmbarque AS DataEmbarque,');
    RefreshSQL.Add('  ExportadoTransito.Fatura AS Fatura,');
    RefreshSQL.Add('  ExportadoTransito.ETADestino AS ETADestino,');
    RefreshSQL.Add('  ExportadoTransito.OBS AS OBS,');
    RefreshSQL.Add('  Informe_Cons.ID AS ID,');
    RefreshSQL.Add('  Informe_Cons.FORCOD AS FORCOD');
    // CRIANDO SUB-SELECT 1 
    RefreshSQL.Add('from ( SELECT '); // inicio sub-select 
    RefreshSQL.Add('  ContratoTransporte.Contrato AS Contrato,');
    RefreshSQL.Add('  ContratoTransporte.NomeMix AS NomeMix,');
    RefreshSQL.Add('  ContratoTransporte.C_C AS C_C,');
    RefreshSQL.Add('  ContratoTransporte.QuantidadeTotal AS QuantidadeTotal,');
    RefreshSQL.Add('  ContratoTransporte.DataEmbarque AS DataEmbarque,');
    RefreshSQL.Add('  ContratoTransporte.PrecoFOBTotal AS PrecoFOBTotal,');
    RefreshSQL.Add('  ContratoTransporte.ValorSCCTotal AS ValorSCCTotal,');
    RefreshSQL.Add('  ContratoTransporte.ID AS ID,');
    RefreshSQL.Add('  ContratoTransporte.FORCOD AS FORCOD');
    RefreshSQL.Add('from ContratoTransporte'); // fim sub-select
    RefreshSQL.Add(' ) AS  Informe_Cons' );
    RefreshSQL.Add('Left Outer Join Fornecedores on');
    RefreshSQL.Add('  Informe_Cons.FORCOD = Fornecedores.FORCOD');
    RefreshSQL.Add('Left Outer Join Boocking on');
    RefreshSQL.Add('  Informe_Cons.Contrato = Boocking.Contrato');
    RefreshSQL.Add('Left Outer Join ExportadoTransito on');
    RefreshSQL.Add('  Informe_Cons.Contrato = ExportadoTransito.Contrato');
    RefreshSQL.Add('Left Outer Join TAB_PAIS on');
    RefreshSQL.Add('  Informe_Cons.ID = TAB_PAIS.ID');
    RefreshSQL.Add('Left Outer Join PrudutoContratoT on');
    RefreshSQL.Add('  Informe_Cons.Contrato = PrudutoContratoT.Contrato');
    RefreshSQL.Add('where');
    RefreshSQL.Add('  Informe_Cons.Contrato = :OLD_Contrato');
  end;
  TabelasExtras.Add('Fornecedores');
  TabelasExtras.Add('Boocking');
  TabelasExtras.Add('ExportadoTransito');
  TabelasExtras.Add('TAB_PAIS');
  TabelasExtras.Add('PrudutoContratoT');
  UpdateObject     := UpdateSql;
    // Sql Principal
  SqlPrincipal.Add('Select');
  SqlPrincipal.Add('  Informe_Cons.Contrato AS Contrato,');
  SqlPrincipal.Add('  Informe_Cons.NomeMix AS NomeMix,');
  SqlPrincipal.Add('  Fornecedores.RAZAO AS RAZAO,');
  SqlPrincipal.Add('  TAB_PAIS.NOME AS NOME,');
  SqlPrincipal.Add('  Informe_Cons.C_C AS C_C,');
  SqlPrincipal.Add('  PrudutoContratoT.FormPago AS FormPago,');
  SqlPrincipal.Add('  Informe_Cons.QuantidadeTotal AS QuantidadeTotal,');
  SqlPrincipal.Add('  Informe_Cons.DataEmbarque AS FECHA_EMB,');
  SqlPrincipal.Add('  PrudutoContratoT.PrecoFOB AS PrecoFOB,');
  SqlPrincipal.Add('  Informe_Cons.PrecoFOBTotal AS PrecoFOBTotal,');
  SqlPrincipal.Add('  PrudutoContratoT.PrecoSCC AS PrecoSCC,');
  SqlPrincipal.Add('  Informe_Cons.ValorSCCTotal AS ValorSCCTotal,');
  SqlPrincipal.Add('  Boocking.Navio AS NAVIO_BUQ,');
  SqlPrincipal.Add('  Boocking.Quantidade AS Quantidade,');
  SqlPrincipal.Add('  ExportadoTransito.Navio AS Navio,');
  SqlPrincipal.Add('  ExportadoTransito.QuantidadeExp AS QuantidadeExp,');
  SqlPrincipal.Add('  ExportadoTransito.Valor AS Valor,');
  SqlPrincipal.Add('  ExportadoTransito.DataEmbarque AS DataEmbarque,');
  SqlPrincipal.Add('  ExportadoTransito.Fatura AS Fatura,');
  SqlPrincipal.Add('  ExportadoTransito.ETADestino AS ETADestino,');
  SqlPrincipal.Add('  ExportadoTransito.OBS AS OBS,');
  SqlPrincipal.Add('  Informe_Cons.ID AS ID,');
  SqlPrincipal.Add('  Informe_Cons.FORCOD AS FORCOD');
  SqlPrincipal.Add('from ( select      ');  // inicio de sub-select
  SqlPrincipal.Add('       ContratoTransporte.Contrato AS Contrato,');
  SqlPrincipal.Add('       ContratoTransporte.NomeMix AS NomeMix,');
  SqlPrincipal.Add('       ContratoTransporte.C_C AS C_C,');
  SqlPrincipal.Add('       ContratoTransporte.QuantidadeTotal AS QuantidadeTotal,');
  SqlPrincipal.Add('       ContratoTransporte.DataEmbarque AS DataEmbarque,');
  SqlPrincipal.Add('       ContratoTransporte.PrecoFOBTotal AS PrecoFOBTotal,');
  SqlPrincipal.Add('       ContratoTransporte.ValorSCCTotal AS ValorSCCTotal,');
  SqlPrincipal.Add('       ContratoTransporte.ID AS ID,');
  SqlPrincipal.Add('       ContratoTransporte.FORCOD AS FORCOD');
  SqlPrincipal.Add('       from  ContratoTransporte'); // fim de sub-select
  SqlPrincipal.Add('     ) as  Informe_Cons');
  Sql.AddStrings(SqlPrincipal);
    // Foreign Key
  FiltroExtra.Add('Left Outer Join Fornecedores on');
  FiltroExtra.Add('  Informe_Cons.FORCOD = Fornecedores.FORCOD');
  FiltroExtra.Add('Left Outer Join Boocking on');
  FiltroExtra.Add('  Informe_Cons.Contrato = Boocking.Contrato');
  FiltroExtra.Add('Left Outer Join ExportadoTransito on');
  FiltroExtra.Add('  Informe_Cons.Contrato = ExportadoTransito.Contrato');
  FiltroExtra.Add('Left Outer Join TAB_PAIS on');
  FiltroExtra.Add('  Informe_Cons.ID = TAB_PAIS.ID');
  FiltroExtra.Add('Left Outer Join PrudutoContratoT on');
  FiltroExtra.Add('  Informe_Cons.Contrato = PrudutoContratoT.Contrato');
  Sql.Add('order by Informe_Cons.Contrato');
  Contrato := TDInforme_Cons_Contrato.Create(AOwner);
  Contrato.Valor.DataSet := Self;
  NomeMix := TDInforme_Cons_NomeMix.Create(AOwner);
  NomeMix.Valor.DataSet := Self;
  RAZAO := TDInforme_Cons_RAZAO.Create(AOwner);
  RAZAO.Valor.DataSet := Self;
  NOME := TDInforme_Cons_NOME.Create(AOwner);
  NOME.Valor.DataSet := Self;
  C_C := TDInforme_Cons_C_C.Create(AOwner);
  C_C.Valor.DataSet := Self;
  FormPago := TDInforme_Cons_FormPago.Create(AOwner);
  FormPago.Valor.DataSet := Self;
  QuantidadeTotal := TDInforme_Cons_QuantidadeTotal.Create(AOwner);
  QuantidadeTotal.Valor.DataSet := Self;
  FECHA_EMB := TDInforme_Cons_FECHA_EMB.Create(AOwner);
  FECHA_EMB.Valor.DataSet := Self;
  PrecoFOB := TDInforme_Cons_PrecoFOB.Create(AOwner);
  PrecoFOB.Valor.DataSet := Self;
  PrecoFOBTotal := TDInforme_Cons_PrecoFOBTotal.Create(AOwner);
  PrecoFOBTotal.Valor.DataSet := Self;
  PrecoSCC := TDInforme_Cons_PrecoSCC.Create(AOwner);
  PrecoSCC.Valor.DataSet := Self;
  ValorSCCTotal := TDInforme_Cons_ValorSCCTotal.Create(AOwner);
  ValorSCCTotal.Valor.DataSet := Self;
  NAVIO_BUQ := TDInforme_Cons_NAVIO_BUQ.Create(AOwner);
  NAVIO_BUQ.Valor.DataSet := Self;
  Quantidade := TDInforme_Cons_Quantidade.Create(AOwner);
  Quantidade.Valor.DataSet := Self;
  Navio := TDInforme_Cons_Navio.Create(AOwner);
  Navio.Valor.DataSet := Self;
  QuantidadeExp := TDInforme_Cons_QuantidadeExp.Create(AOwner);
  QuantidadeExp.Valor.DataSet := Self;
  Valor := TDInforme_Cons_Valor.Create(AOwner);
  Valor.Valor.DataSet := Self;
  DataEmbarque := TDInforme_Cons_DataEmbarque.Create(AOwner);
  DataEmbarque.Valor.DataSet := Self;
  Fatura := TDInforme_Cons_Fatura.Create(AOwner);
  Fatura.Valor.DataSet := Self;
  ETADestino := TDInforme_Cons_ETADestino.Create(AOwner);
  ETADestino.Valor.DataSet := Self;
  OBS := TDInforme_Cons_OBS.Create(AOwner);
  OBS.Valor.DataSet := Self;
  FORCOD := TDInforme_Cons_FORCOD.Create(AOwner);
  FORCOD.Valor.DataSet := Self;
  ID := TDInforme_Cons_ID.Create(AOwner);
  ID.Valor.DataSet := Self;
//CRIANDO CHAVE PRIMARIA 
  ChavePrimaria.Add(Contrato);
//CRIANDO CAMPOS 
  Campos.Add(Contrato);
  Campos.Add(NomeMix);
  Campos.Add(RAZAO);
  Campos.Add(NOME);
  Campos.Add(C_C);
  Campos.Add(FormPago);
  Campos.Add(QuantidadeTotal);
  Campos.Add(FECHA_EMB);
  Campos.Add(PrecoFOB);
  Campos.Add(PrecoFOBTotal);
  Campos.Add(PrecoSCC);
  Campos.Add(ValorSCCTotal);
  Campos.Add(NAVIO_BUQ);
  Campos.Add(Quantidade);
  Campos.Add(Navio);
  Campos.Add(QuantidadeExp);
  Campos.Add(Valor);
  Campos.Add(DataEmbarque);
  Campos.Add(Fatura);
  Campos.Add(ETADestino);
  Campos.Add(OBS);
  Campos.Add(ID);
  Campos.Add(FORCOD);
  TituloIndices.Add('Contrato');
  Indices.Add('Informe_Cons.Contrato');
  Crescente.Add('S');
  TituloPrimaria := 'Contrato';
  ChPrimaria     := 'Informe_Cons.Contrato';
//CRIANDO TituloIndices 
  TituloIndice   := 'Contrato';
  ChaveIndice    := 'Informe_Cons.Contrato';
  AfterInsert    := AtribuiMestre;
  AfterPost      := ProcessoDireto1;
  AfterCancel    := ProcessoDireto2;
  BeforePost     := AtualizaCalculados;
  BeforeEdit     := ProcessoInverso1;
  BeforeDelete   := ProcessoInverso2;
end;
////////////////////////////////
//   CRIANDO PROCEDIMENTOS    //
////////////////////////////////

procedure TDInforme_Cons.CriaForeignKeys;
var
  Script_ForeignKeys: TSQLScript;
begin
  if ForeignKeys.Count > 0 then
  begin
    Script_ForeignKeys := TSQLScript.Create(Self);
    with Script_ForeignKeys do
    begin
      Database         := BaseDados.BD_Base_Dados;
      {$IFDEF IBX}
      Transaction      := BaseDados.TRS_BD_Base_Dados;
      with Script do
      {$ELSE}
      DatabaseName     := BaseDados.BD_Base_Dados.DatabaseName;
      with SQL do
      {$ENDIF}
      AddStrings(ForeignKeys);
      Executar;
      Free;
    end;
  end;
end;

function TDInforme_Cons.PodeExcluir: Boolean;
begin
  PodeExcluir := True;
  if not Sistema.Integridade then
    exit;
end;

procedure TDInforme_Cons.ExclusaoCascata;
begin
end;

function TDInforme_Cons.PesquisaRelacionados(Tabela, Campo: String; var Retorno: Variant; CampoFoco: String = ''): Boolean;
begin
  Result := False;
  if UpperCase(Tabela) = UpperCase('Fornecedores') then
    if (UpperCase('FORCOD') = UpperCase(CampoFoco)) then
      if PTabela(TabGlobal.DFornecedores, ['FORCOD'], [FORCOD.Valor.Value], [Campo], Retorno) then
        Result := True;

  if UpperCase(Tabela) = UpperCase('TAB_PAIS') then
    if (UpperCase('ID') = UpperCase(CampoFoco)) then
      if PTabela(TabGlobal.DTAB_PAIS, ['ID'], [ID.Valor.Value], [Campo], Retorno) then
        Result := True;

  if UpperCase(Tabela) = UpperCase('PrudutoContratoT') then
    if (UpperCase('Contrato') = UpperCase(CampoFoco)) then
      if PTabela(TabGlobal.DProdutoContratoT, ['Contrato'], [Contrato.Valor.Value], [Campo], Retorno) then
        Result := True;

  if UpperCase(Tabela) = UpperCase('Boocking') then
    if (UpperCase('Contrato') = UpperCase(CampoFoco)) then
      if PTabela(TabGlobal.DBoocking, ['Contrato'], [Contrato.Valor.Value], [Campo], Retorno) then
        Result := True;

  if UpperCase(Tabela) = UpperCase('ExportadoTransito') then
    if (UpperCase('Contrato') = UpperCase(CampoFoco)) then
      if PTabela(TabGlobal.DExportadoTransito, ['Contrato'], [Contrato.Valor.Value], [Campo], Retorno) then
        Result := True;

end;

function TDInforme_Cons.PesquisaRelacionados(Tabela: String): Boolean;
begin
  Result := False;
  if UpperCase(Tabela) = UpperCase('Fornecedores') then
    if PTabela(TabGlobal.DFornecedores, ['FORCOD'], [FORCOD.Valor.Value]) then
      Result := True;

  if UpperCase(Tabela) = UpperCase('TAB_PAIS') then
    if PTabela(TabGlobal.DTAB_PAIS, ['ID'], [ID.Valor.Value]) then
      Result := True;

  if UpperCase(Tabela) = UpperCase('PrudutoContratoT') then
    if PTabela(TabGlobal.DProdutoContratoT, ['Contrato'], [Contrato.Valor.Value]) then
      Result := True;

  if UpperCase(Tabela) = UpperCase('Boocking') then
    if PTabela(TabGlobal.DBoocking, ['Contrato'], [Contrato.Valor.Value]) then
      Result := True;

  if UpperCase(Tabela) = UpperCase('ExportadoTransito') then
    if PTabela(TabGlobal.DExportadoTransito, ['Contrato'], [Contrato.Valor.Value]) then
      Result := True;

  if UpperCase(Tabela) = UpperCase('ContratoTransporte') then
    if PTabela(TabGlobal.DInforme_Cons, ['Contrato'], [Contrato.Valor.Value]) then
      Result := True;
end;

procedure TDInforme_Cons.CalculaCampos;
begin
end;

procedure TDInforme_Cons.AtribuiRelacionamentos(Atribui: Boolean = True);
begin
end;

procedure TDInforme_Cons.AtribuiFiltroMestre(Atribui: Boolean = True; Atualiza: Boolean = True);
var
  I: Integer;
begin
  Filtro.Clear;
  FiltroRelac.Clear;
  if Atribui then
  begin
  end
  else
    for I:=0 to Campos.Count-1 do
      TAtributo(Campos[I]).Valor.OnValidate := nil;
  if Atualiza then
    AtualizaSql;
end;

procedure TDInforme_Cons.AtribuiMestre(DataSet: TDataSet);
begin
end;

procedure TDInforme_Cons.ProcessoDireto1(DataSet: TDataSet);
var
  QueryLc: TTabela;
  EmEdicao: Boolean;
begin
  {$IFDEF IBX}
  Transaction.CommitRetaining;
  {$ELSE}
  {$ENDIF}
  Inclusao    := False;
  Modificacao := False;
end;

procedure TDInforme_Cons.ProcessoDireto2(DataSet: TDataSet);
var
  EmEdicao: Boolean;
begin
  {$IFDEF IBX}
  Transaction.CommitRetaining;
  {$ELSE}
  {$ENDIF}
  Inclusao    := False;
  Modificacao := False;
end;

procedure TDInforme_Cons.AtualizaCalculados(DataSet: TDataSet);
begin
  CalculaCampos;
  if Inclusao then
    if (Contrato.SempreAtribui) and (Contrato.AutoIncremento > 0) then
      AutoIncremento('Contrato', True, Contrato.AutoIncremento);
end;

procedure TDInforme_Cons.ProcessoInverso1(DataSet: TDataSet);
var
  EmEdicao: Boolean;
begin
end;

procedure TDInforme_Cons.ProcessoInverso2(DataSet: TDataSet);
var
  EmEdicao: Boolean;
begin
  if not PodeExcluir then Abort;
  ExclusaoCascata;
end;

procedure TDInforme_Cons.Parametros(Tabela: TTabela);
begin
  Parametros_Padrao(Tabela);
end;

end.
