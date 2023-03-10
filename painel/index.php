<?php 
@session_start();
require_once('../conexao.php');
if(@$_SESSION['id_beneficiario'] == ""){
	echo "<script>window.location='../index.php'</script>";
	exit();
}

require_once("cabecalho.php");

$id = $_SESSION['id_beneficiario'];
//recuperar os dados do usuário logado
$query = $pdo->query("SELECT * FROM beneficiarios where id = '$id' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @count($res);

if($total_reg > 0){
	$nome_ben = $res[0]['nome'];
	$nome_infor_ben = $res[0]['nome_infor'];
	$nomesocial_ben = $res[0]['nomesocial'];
	//$foto_ben = $res[0]['foto'];
	$cpf_ben = $res[0]['cpf'];
	$sexo_ben = $res[0]['sexo'];
}

?>

<form id="form-pessoais" method="POST">
<div class="row">
	<div class="col-md-4">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Nome do Beneficiário</label>
			<input name="nome" type="text" class="form-control" placeholder="Nome do completo do beneficiário" value="<?php echo $nome_ben ?>" disabled="">
		</div>
	</div>

	<div class="col-md-4">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Nome do Beneficiário</label>
			<input name="nome_infor" id="nome_infor" type="text" class="form-control" placeholder="Informe seu nome caso esteja incorreto" value="<?php echo $nome_infor_ben ?>">
		</div>
	</div>

	<div class="col-md-2 col-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Nome Social</label>
			<input name="nomesocial" id="nomesocial" type="text" class="form-control" placeholder="Caso possua" value="<?php echo $nomesocial_ben ?>">
		</div>
	</div>

	<div class="col-md-2 col-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Data de Nascimento</label>
			<input name="datanasc" id="datanasc" type="date" class="form-control" required>
		</div>
	</div>

</div>


<div class="row">

	<div class="col-md-2 col-4">						
		<div class="form-group mb-3"> 
			<label>Sexo</label> 
			<select class="form-control" name="sexo" id="sexo" required> 
				<option value="" selected disabled hidden>clique aqui</option>
				<option value="M">M</option>
				<option value="F">F</option>
			</select>
		</div>
	</div>

	<div class="col-md-2 col-4">						
		<div class="form-group mb-3"> 
			<label>Raça/Cor</label> 
			<select class="form-control" name="racacor" id="racacor" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<?php
				$query = $pdo->query("SELECT * FROM racacor");
				$res = $query->fetchAll(PDO::FETCH_ASSOC);
				for($i=0; $i < @count($res); $i++){
					foreach ($res[$i] as $key => $value){}
				?>
				<option value="<?php echo $res[$i]['id'] ?>"> <?php echo $res[$i]['nome'] ?> </option>
				<?php } ?>
			</select>
		</div>
	</div>

	<div class="col-md-2 col-4">						
		<div class="form-group mb-3"> 
			<label>Etnia</label> 
			<select class="form-control" name="etnia" id="etnia" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<?php
				$query = $pdo->query("SELECT * FROM etnia");
				$res = $query->fetchAll(PDO::FETCH_ASSOC);
				for($i=0; $i < @count($res); $i++){
					foreach ($res[$i] as $key => $value){}
				?>
				<option value="<?php echo $res[$i]['id'] ?>"> <?php echo $res[$i]['nome'] ?> </option>
				<?php } ?>
			</select>
		</div>
	</div>

	<div class="col-md-2 col-4">						
		<div class="form-group mb-3"> 
			<label>Naturalidade</label> 
			<select class="form-control" name="natura" id="natura" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<?php
				$query = $pdo->query("SELECT * FROM estado");
				$res = $query->fetchAll(PDO::FETCH_ASSOC);
				for($i=0; $i < @count($res); $i++){
					foreach ($res[$i] as $key => $value){}
				?>
				<option value="<?php echo $res[$i]['id']?>"> <?php echo $res[$i]['nome'] ?> </option>
				<?php } ?>
			</select>
		</div>
	</div>

	<div class="col-md-2 col-4">						
		<div class="form-group mb-3"> 
			<label>Nacionalidade</label> 
			<select class="form-control" name="nacional" id="nacional" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<?php
				$query = $pdo->query("SELECT * FROM paises");
				$res = $query->fetchAll(PDO::FETCH_ASSOC);
				for($i=0; $i < @count($res); $i++){
					foreach ($res[$i] as $key => $value){}
				?>
				<option value="<?php echo $res[$i]['id'] ?>"> <?php echo $res[$i]['nome'] ?> </option>
				<?php } ?>
			</select>
		</div>
	</div>

	<div class="col-md-2 col-4">						
		<div class="form-group mb-3"> 
			<label>Religião</label> 
			<select class="form-control" name="religiao" id="religiao" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<?php
				$query = $pdo->query("SELECT * FROM religiao");
				$res = $query->fetchAll(PDO::FETCH_ASSOC);
				for($i=0; $i < @count($res); $i++){
					foreach ($res[$i] as $key => $value){}
				?>
				<option value="<?php echo $res[$i]['id'] ?>"> <?php echo $res[$i]['nome'] ?> </option>
				<?php } ?>
			</select>
		</div>
	</div>

</div>

<div class="row">

	<div class="col-md-6 col-6">						
		<div class="form-group mb-3"> 
			<label>Escolaridade</label> 
			<select class="form-control" name="escolaridade" id="escolaridade" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<option value="Fundamental">Fundamental</option>
				<option value="Médio">Médio</option>
				<option value="Superior">Superior</option>
			</select>
		</div>
	</div>

	<div class="col-md-6 col-6">						
		<div class="form-group mb-3"> 
			<label>Ensino</label> 
			<select class="form-control" name="ensino" id="ensino" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<option value="Completo">Completo</option>
				<option value="Incompleto">Incompleto</option>
				<option value="Cursando">Cursando</option>
			</select>
		</div>
	</div>
</div>


<div class="row">
	<div class="col-md-3 col-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Documento de Identificação</label>
			<select class="form-control" name="tipodoc" id="tipodoc" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<option value="Registro Geral">RG</option>
				<option value="Registro Administrativo de Nascimento de Indígena">RANI</option>
				<option value="Registro Nacional Migratório">RNM</option>
				<option value="Registro Nacional do Estrangeiro">RNE</option>
			</select>
		</div>
	</div>

	<div class="col-md-3 col-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Número documento</label>
			<input name="docnum" type="text" class="form-control" placeholder="Digite o Nr do documento">
		</div>
	</div>

	<div class="col-md-3 col-6">						
		<div class="form-group mb-3"> 
			<label for="exampleFormControlInput1" class="form-label">Órgão Emissor</label> 
			<select class="form-control" name="docorgao" id="docorgao" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<?php
				$query = $pdo->query("SELECT * FROM orgaoemissor");
				$res = $query->fetchAll(PDO::FETCH_ASSOC);
				for($i=0; $i < @count($res); $i++){
					foreach ($res[$i] as $key => $value){}
				?>
				<option value="<?php echo $res[$i]['id'] ?>"> <?php echo $res[$i]['sigla'] ?> </option>
				<?php } ?>
			</select>
		</div>
	</div>

	<div class="col-md-3 col-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Data Emissão</label>
			<input name="docexpedicao" id="docexpedicao" type="date" class="form-control">
		</div>
	</div>


</div>




<div class="row">
	<div class="col-md-3">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Carteira Reservista</label>
			<input name="reservista" type="text" class="form-control" placeholder="Se Houver">
		</div>
	</div>

	<div class="col-md-3">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Carteira de Trabalho</label>
			<input name="clt" type="text" class="form-control" placeholder="Se Houver">
		</div>
	</div>

	<div class="col-md-3">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Cartão do SUS</label>
			<input name="cartaosus" type="text" class="form-control" placeholder="Se Houver">
		</div>
	</div>

	<div class="col-md-3">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Cartão de Vacina</label>
			<input name="cartaovacina" type="text" class="form-control" placeholder="Se Houver">
		</div>
	</div>

</div>

<div class="row">
	<div class="col-md-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Pai</label>
			<input name="pai" type="text" class="form-control" placeholder="Digite o nome completo do pai">
		</div>
	</div>

	<div class="col-md-6">
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label">Mãe</label>
			<input name="mae" type="text" class="form-control" placeholder="Digite o nome completo do mãe">
		</div>
	</div>
</div>


<div class="row">
	
	<div class="col-md-2 col-6">
		<div class="mb-2">
			<label for="exampleFormControlInput1" class="form-label">Foto (*png, jpg, jpeg)</label>
			<input id="foto" name="foto" type="file" class="form-control" onchange="alterarImg('target-foto', 'foto')">	
		</div>
	</div>
	
	<div class="col-md-1 col-2">
		<div><img id="target-foto" src="../img/perfil/sem-perfil.jpg" class="rounded-circle" alt="example placeholder" style="width:150px;" /></div>
	</div>

</div>

<input type="hidden" name="id" id="id" value="<?php echo $id ?>"> 

&nbsp;

<div align="right">
	<a href="./economico.php">
	<button class="btn btn-primary" type="submit">Próximo</button>
	</a>
</div>

<small><div id="mensagem-pessoais" align="center"></div></small>

</form>

<br><br>
</div>







<script type="text/javascript">
$("#form-pessoais").submit(function () {
	$('#mensagem-pessoais').text('...Carregando!')

    event.preventDefault();
    var formData = new FormData(this);

    $.ajax({
        url: "scripts/salvar-pessoais.php",
        type: 'POST',
        data: formData,

        success: function (mensagem) {
            $('#mensagem-pessoais').text('');
            $('#mensagem-pessoais').removeClass()
            if (mensagem.trim() == "Salvo com Sucesso") {                        
            	//location.reload();
            	$('#mensagem-pessoais').addClass('text-success')
            	$('#mensagem-pessoais').text(mensagem)
            	window.location='economico.php';
            } else {
                $('#mensagem-pessoais').addClass('text-danger')
                $('#mensagem-pessoais').text(mensagem)
            }


        },

        cache: false,
        contentType: false,
        processData: false,

    });

});

</script>
