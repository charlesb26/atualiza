<?php
require_once("../../conexao.php");

$tabela = 'beneficiarios';

$cep = $_POST['cep'];
$rua = $_POST['rua'];
$numero = $_POST['numero'];
$bairro = $_POST['bairro'];
$cidade = $_POST['cidade'];
$email = $_POST['email'];
$redesocial = $_POST['redesocial'];
$descricaoredesocial = $_POST['descricaoredesocial'];
$telefone = $_POST['telefone'];
$localizacao = $_POST['localizacao'];
$moradia = $_POST['moradia'];
$tipmorada = $_POST['tipmorada'];
$tipconstrucao = $_POST['tipconstrucao'];
$pisomorada = $_POST['pisomorada'];
$agua = $_POST['agua'];
$luz = $_POST['luz'];
$lixo = $_POST['lixo'];
$banheiro = $_POST['banheiro'];
$esgoto = $_POST['esgoto'];
$nrcomodos = $_POST['nrcomodos'];
$nrpessoas = $_POST['nrpessoas'];
$nrfamilia = $_POST['nrfamilia'];

$empregado = $_POST['empregado'];
$profissao = $_POST['profissao'];
$renda = $_POST['renda'];
$beneficio = $_POST['beneficio'];
$beneficiodescricao = $_POST['beneficiodescricao'];
$beneficiovalor = $_POST['beneficiovalor'];

$renda = str_replace('.', '', $renda);
$renda = str_replace(',', '.', $renda);

$beneficiovalor = str_replace('.', '', $beneficiovalor);
$beneficiovalor = str_replace(',', '.', $beneficiovalor);

//echo "renda: ".$renda;
//echo "rendaF: ".$rendaF;
//exit();

$id = $_POST['id'];

if($id == ""){
	$query = $pdo->prepare("INSERT INTO $tabela SET cep = :cep, rua = :rua, numero = :numero, bairro = :bairro, cidade = :cidade, email = :email, redesocial = '$redesocial', descricaoredesocial = :descricaoredesocial, telefone = :telefone, localizacao = '$localizacao', moradia = '$moradia', tipmorada = '$tipmorada', tipconstrucao = '$tipconstrucao', pisomorada = '$pisomorada', agua = '$agua', luz = '$luz', lixo = '$lixo', banheiro = '$banheiro', esgoto = '$esgoto', nrcomodos = '$nrcomodos', nrpessoas = '$nrpessoas', nrfamilia = '$nrfamilia', empregado = '$empregado', profissao = :profissao, renda = :renda, beneficio = '$beneficio',	beneficiodescricao = :beneficiodescricao, beneficiovalor = :beneficiovalor");
	$acao = 'inserção';
	
}else{
	$query = $pdo->prepare("UPDATE $tabela SET 
		cep = :cep, 
		numero = :numero, 
		rua = :rua,
		bairro = :bairro, 
		cidade = :cidade, 
		email = :email,
		redesocial = '$redesocial', 
		descricaoredesocial = :descricaoredesocial, 
		telefone = :telefone,
		localizacao = '$localizacao', 
		moradia = '$moradia', 
		tipmorada = '$tipmorada',
		tipconstrucao = '$tipconstrucao',
		pisomorada = '$pisomorada',
		agua = '$agua', 
		luz = '$luz', 
		lixo = '$lixo',
		banheiro = '$banheiro',
		esgoto = '$esgoto',
		nrcomodos = '$nrcomodos',
		nrpessoas = '$nrpessoas',
		nrfamilia = '$nrfamilia',
		empregado = '$empregado',
		profissao = :profissao,
		renda = :renda,
		beneficio = '$beneficio',
		beneficiodescricao = :beneficiodescricao,
		beneficiovalor = :beneficiovalor where id = '$id'"); 
	$acao = 'edição';
	
	
}

	$query->bindValue(":cep", "$cep");
	$query->bindValue(":numero", "$numero");
	$query->bindValue(":rua", "$rua");
	$query->bindValue(":bairro", "$bairro");
	$query->bindValue(":cidade", "$cidade");
	$query->bindValue(":email", "$email");
	$query->bindValue(":descricaoredesocial", "$descricaoredesocial");
	$query->bindValue(":telefone", "$telefone");
	$query->bindValue(":profissao", "$profissao");
	$query->bindValue(":renda", "$renda");
	$query->bindValue(":beneficiodescricao", "$beneficiodescricao");
	$query->bindValue(":beneficiovalor", "$beneficiovalor");

	$query->execute();
	$ult_id = $pdo->lastInsertId();


if(@$ult_id == "" || @$ult_id == 0){
	$ult_id = $id;
}


echo 'Salvo com Sucesso';

 ?>