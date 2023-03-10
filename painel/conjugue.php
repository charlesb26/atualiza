<?php 
@session_start();
require_once('../conexao.php');
if(@$_SESSION['id_beneficiario'] == ""){	
	echo '<script>window.location="../index.php"</script>';
	exit();
}

require_once("cabecalho.php");
?>

<form id="form-conjugue" method="POST">
<div class="row">
	<div class="col-md-2">						
		<div class="form-group mb-3"> 
			<label for="exampleFormControlInput1" class="form-label">Estado Civil</label> 
			<select class="form-control" name="estadocivil" id="estadocivil" required>
				<option value="" selected disabled hidden>clique aqui</option>
				<option value="Casado">Casado(a)</option>
				<option value="Solteiro">Solteiro(a)</option>
				<option value="União Estável">União Estável</option>
				<option value="Viúvo">Viúvo(a)</option>
				<option value="Separado">Separado(a)</option>
				<option value="Divorciado">Divorciado(a)</option>
			</select>
		</div>
	</div>

</div>


<div id="conjugues">
	<div class="row">
		<div class="col-md-4">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Nome Cônjugue</label>
				<input name="nomeconjugue" type="text" class="form-control" placeholder="Informe nome completo" >
			</div>
		</div>

		<div class="col-md-2">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">CPF</label>
				<input name="cpfconjugue" id="cpf" type="text" class="form-control" placeholder="" >
			</div>
		</div>

		<div class="col-md-2">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Data de Nascimento</label>
				<input name="datanascconjugue" id="datanascconjugue" type="date" class="form-control" required>
			</div>
		</div>

		<div class="col-md-2">						
			<div class="form-group mb-3"> 
				<label for="exampleFormControlInput1" class="form-label">Sexo</label> 
				<select class="form-control" name="sexoconjugue" id="sexoconjugue" required> 
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="M">Masculino</option>
					<option value="F">Feminino</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-5">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Telefone</label>
				<input name="telefoneconjugue" id="telefone" type="text" class="form-control">
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-2 col-4">						
			<div class="form-group mb-3"> 
				<label>Raça/Cor</label> 
				<select class="form-control" name="racacorconjugue" id="racacorconjugue" required>
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
				<select class="form-control" name="etniaconjugue" id="etniaconjugue" required>
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
				<label>Natural do Estado</label> 
				<select class="form-control" name="naturalconjugue" id="naturalconjugue" required>
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
				<label>País de Origem</label> 
				<select class="form-control" name="nacionalconjugue" id="nacionalconjugue" required>
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

		<div class="col-md-2">						
			<div class="form-group mb-3"> 
				<label>Escolaridade</label> 
				<select class="form-control" name="escolaridadeconjugue" id="escolaridadeconjugue" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Fundamental">Fundamental</option>
					<option value="Médio">Médio</option>
					<option value="Superior">Superior</option>
				</select>
			</div>
		</div>

		<div class="col-md-2">						
			<div class="form-group mb-3"> 
				<label>Ensino</label> 
				<select class="form-control" name="ensinoconjugue" id="ensinoconjugue" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Completo">Completo</option>
					<option value="Incompleto">Incompleto</option>
					<option value="Cursando">Cursando</option>
				</select>
			</div>
		</div>


	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Email</label>
				<input name="emailconjugue" id="emailconjugue" type="email" class="form-control">
			</div>
		</div>

	</div>
	<div class="row">
		<div class="col-md-2 col-4">						
			<div class="form-group mb-3"> 
				<label for="exampleFormControlInput1" class="form-label">Rede Social</label> 
				<select class="form-control" name="redesocialconjugue" id="redesocialconjugue" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Não possui">Não possuo</option>
					<option value="Facebook">Facebook</option>
					<option value="Instagram">Instagram</option>
					<option value="Linkdin">Linkdin</option>
				</select>
			</div>
		</div>

		<div class="col-md-4 col-8">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Descrição Rede Social</label>
				<input name="descricaoredesocialconjugue" id="descricaoredesocialconjugue" type="text" class="form-control">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Pai</label>
				<input name="paiconjugue" type="text" class="form-control" placeholder="Digite o nome completo do pai">
			</div>
		</div>

		<div class="col-md-3">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Mãe</label>
				<input name="maeconjugue" type="text" class="form-control" placeholder="Digite o nome completo do mãe">
			</div>
		</div>
	</div>
</div>


<div align="right">
		<a href="./dependentes.php">
		<button class="btn btn-primary" type="submit">Próximo</button>
		</a>
	</div>

	<small>
		<div id="mensagem-conjugue" align="center"></div>
	</small>


<small><div id="mensagem" align="center"></div></small>

</form>

<br><br>
</div>


<script>
	$(document).ready(function() {// ao ler o documento
		
		$('#estadocivil').change(function(){// quando o combobox pretente_programa for modificada
			if($(this).val() == 'Solteiro'){ // se o valor for igual a Fisica				
				document.getElementById('conjugues').style.display = 'none';
			}else if($(this).val() == 'Viúvo'){
				document.getElementById('conjugues').style.display = 'none';
			}else if($(this).val() == 'Separado'){
				document.getElementById('conjugues').style.display = 'none';
			}else if($(this).val() == 'Divorciado'){
				document.getElementById('conjugues').style.display = 'none';
			}else{
				document.getElementById('conjugues').style.display = 'block';
			}
		});
		
	});
</script>


<script type="text/javascript">
$("#form-conjugue").submit(function () {
	$('#mensagem-conjugue').text('...Carregando!')

    event.preventDefault();
    nicEditors.findEditor('area').saveContent();
    var formData = new FormData(this);

    $.ajax({
        url: "scripts/salvar-conjugue.php",
        type: 'POST',
        data: formData,

        success: function (mensagem) {
            $('#mensagem-conjugue').text('');
            $('#mensagem-conjugue').removeClass()
            if (mensagem.trim() == "Salvo com Sucesso") {                        
            	//location.reload();
            	$('#mensagem-conjugue').addClass('text-success')
            	$('#mensagem-conjugue').text(mensagem)
				window.location='dependentes.php';
            } else {
                $('#mensagem-conjugue').addClass('text-danger')
                $('#mensagem-conjugue').text(mensagem)
            }


        },

        cache: false,
        contentType: false,
        processData: false,

    });

});


</script>




<script src="//js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>