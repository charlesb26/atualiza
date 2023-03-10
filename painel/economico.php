<?php
@session_start();
require_once('../conexao.php');
if (@$_SESSION['id_beneficiario'] == "") {
	echo "<script>window.location='../index.php'</script>";
	exit();
}

require_once("cabecalho.php");

$id = $_SESSION['id_beneficiario'];
//recuperar os dados do usuário logado
$query = $pdo->query("SELECT * FROM beneficiarios where id = '$id' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @count($res);

if ($total_reg > 0) {
	$nome_ben = $res[0]['nome'];
	$nome_infor_ben = $res[0]['nome_infor'];
	$nomesocial_ben = $res[0]['nomesocial'];
	//$foto_ben = $res[0]['foto'];
	$cpf_ben = $res[0]['cpf'];
	$sexo_ben = $res[0]['sexo'];
}

?>
<script type="text/javascript" src="./js/api.js"></script>

<form id="form-economico" method="POST">
	<div class="row">
		<div class="col-md-4">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Nome do Beneficiário</label>
				<input name="nome" type="text" class="form-control" placeholder="Nome do completo do beneficiário" value="<?php echo $nome_ben ?>">
			</div>
		</div>
	</div>
	<div class="row">

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">CEP</label>
				<input class="form-control" name="cep" type="text" id="cep" value="" size="10" maxlength="9" onblur="pesquisacep(this.value);">
			</div>
		</div>

		<div class="col-md-3 col-8">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Rua</label>
				<input name="rua" id="rua" type="text" class="form-control" readonly>
			</div>
		</div>

		<div class="col-md-1 col-8">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Nº</label>
				<input name="numero" id="numero" type="text" class="form-control" placeholder="XX">
			</div>
		</div>

		<div class="col-md-3 col-6">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Bairro</label>
				<input name="bairro" id="bairro" type="text" class="form-control" readonly>
			</div>
		</div>

		<div class="col-md-3 col-6">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Município</label>
				<input name="cidade" id="cidade" type="text" class="form-control" readonly>
			</div>
		</div>



	</div>


	<div class="row">

		<div class="col-md-4">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Email</label>
				<input name="email" id="email" type="email" class="form-control">
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Rede Social</label>
				<select class="form-control" name="redesocial" id="redesocial" required>
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
				<input name="descricaoredesocial" id="descricaoredesocial" type="text" class="form-control">
			</div>
		</div>

		<div class="col-md-2 col-5">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Telefone</label>
				<input name="telefone" id="telefone" type="text" class="form-control" required>
			</div>
		</div>

	</div>
	<hr>

	<div class="row">
		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Localização</label>
				<select class="form-control" name="localizacao" id="localizacao" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Urbana">Urbana</option>
					<option value="Rural">Rural</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Tipo Moradia</label>
				<select class="form-control" name="moradia" id="moradia" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Casa">Casa</option>
					<option value="Vila">Vila</option>
					<option value="Abrigo">Abrigo</option>
					<option value="Irregular">Irregular</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Situação Moradia</label>
				<select class="form-control" name="tipmorada" id="tipmorada" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Própria">Própria</option>
					<option value="Alugada">Alugada</option>
					<option value="Abrigo">Abrigo</option>
					<option value="Cedida">Cedida</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Tipo Construção</label>
				<select class="form-control" name="tipconstrucao" id="tipconstrucao" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Alvenaria">Alvenaria</option>
					<option value="Madeira">Madeira</option>
					<option value="Mista">Mista</option>
					<option value="Taipo">Taipo</option>
					<option value="Abrigo">Abrigo</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Piso Imóvel</label>
				<select class="form-control" name="pisomorada" id="pisomorada" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Porcelanato">Porcelanato</option>
					<option value="Cerâmica">Cerâmica</option>
					<option value="Cimento">Cimento</option>
					<option value="Madeira">Madeira</option>
					<option value="Barro">Barro</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Consumo Água</label>
				<select class="form-control" name="agua" id="agua" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Rede Geral">Rede Geral</option>
					<option value="Poço">Poço</option>
					<option value="Cisterna">Cisterna</option>
					<option value="Outros">Outros</option>
				</select>
			</div>
		</div>

	</div>


	<div class="row">
		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Rede Elétrica</label>
				<select class="form-control" name="luz" id="luz" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
					<option value="Clandestino">Clandestino</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Coleta Lixo</label>
				<select class="form-control" name="lixo" id="lixo" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Banheiro interno</label>
				<select class="form-control" name="banheiro" id="banheiro" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Sistema Esgoto</label>
				<select class="form-control" name="esgoto" id="esgoto" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Tratado">Tratado</option>
					<option value="Fossa">Fossa Séptica</option>
					<option value="Vala">Vala</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Nr Comodos <small><small><small><small>(na Residência)</small></small></small></small></label>
				<select class="form-control" name="nrcomodos" id="nrcomodos" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="1">01</option>
					<option value="2">02</option>
					<option value="3">03</option>
					<option value="4">04</option>
					<option value="5">05</option>
					<option value="6">06</option>
					<option value="7">07</option>
					<option value="8">08</option>
					<option value="9">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label>Pessoas Família <small><small><small><small>(Quantidade)</small></small></small></small></label>
				<select class="form-control" name="nrpessoas" id="nrpessoas" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="1">01</option>
					<option value="2">02</option>
					<option value="3">03</option>
					<option value="4">04</option>
					<option value="5">05</option>
					<option value="6">06</option>
					<option value="7">07</option>
					<option value="8">08</option>
					<option value="9">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
				</select>
			</div>
		</div>

	</div>




	<div class="row">
		<div class="col-md-2 col-8">
			<div class="form-group mb-3">
				<label>Famílias Domicílio <small><small><small><small>(Quantidade)</small></small></small></small></label>
				<select class="form-control" name="nrfamilia" id="nrfamilia" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="1">01</option>
					<option value="2">02</option>
					<option value="3">03</option>
					<option value="4">04</option>
					<option value="5">05</option>
					<option value="6">06</option>
					<option value="7">07</option>
					<option value="8">08</option>
					<option value="9">09</option>
				</select>
			</div>
		</div>

	</div>
	<hr>

	<div class="row">
		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Empregado?</label>
				<select class="form-control" name="empregado" id="empregado" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4" id="profissao">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Profissão</label>
				<input name="profissao" type="text" class="form-control" placeholder="Ex. Autônomo">
			</div>
		</div>

		<div class="col-md-2 col-4">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Renda Familiar</label>
				<input name="renda" id="reais" type="text" class="form-control" placeholder="">
			</div>
		</div>


		<div class="col-md-2 col-4">
			<div class="form-group mb-3">
				<label for="exampleFormControlInput1" class="form-label">Benefício Social?</label>
				<select class="form-control" name="beneficio" id="beneficio" required>
					<option value="" selected disabled hidden>clique aqui</option>
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
				</select>
			</div>
		</div>

		<div class="col-md-2 col-4" id="beneficiodescricao">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Qual Benefício?</label>
				<input name="beneficiodescricao" type="text" class="form-control" placeholder="Informe o nome">
			</div>
		</div>

		<div class="col-md-2 col-4" id="beneficiovalor">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Valor Benefício</label>
				<input name="beneficiovalor" id="reais1" type="text" class="form-control" placeholder="R$ 0,00">
			</div>
		</div>


	</div>


	<input type="hidden" name="id" id="id" value="<?php echo $id ?>">


	<div align="right">
		<a href="./conjugue.php">
		<button class="btn btn-primary" type="submit">Próximo</button>
		</a>
	</div>

	<small>
		<div id="mensagem-economico" align="center"></div>
	</small>

</form>

<br><br>
</div>

<script>
	$(document).ready(function() { // ao ler o documento

		document.getElementById('profissao').style.display = 'none';
		document.getElementById('beneficiodescricao').style.display = 'none';
		document.getElementById('beneficiovalor').style.display = 'none';


		$('#empregado').change(function() { // quando o combobox pretente_programa for modificada
			if ($(this).val() == 'Sim') { // se o valor for igual a Fisica				
				document.getElementById('profissao').style.display = 'block';
			} else if ($(this).val() == 'Não') {
				document.getElementById('profissao').style.display = 'none';
			} else {
				document.getElementById('profissao').style.display = 'none';
			}
		});

		$('#beneficio').change(function() { // quando o combobox pretente_programa for modificada
			if ($(this).val() == 'Sim') { // se o valor for igual a Fisica				
				document.getElementById('beneficiodescricao').style.display = 'block';
				document.getElementById('beneficiovalor').style.display = 'block';
			} else if ($(this).val() == 'Não') {
				document.getElementById('beneficiodescricao').style.display = 'none';
				document.getElementById('beneficiovalor').style.display = 'none';
			} else {
				document.getElementById('beneficiodescricao').style.display = 'none';
				document.getElementById('beneficiovalor').style.display = 'none';
			}
		});
	});
</script>


<script type="text/javascript">
$("#form-pessoais").submit(function () {
	$('#mensagem-economico').text('...Carregando!')

    event.preventDefault();
    var formData = new FormData(this);

    $.ajax({
        url: "scripts/salvar-economico.php",
        type: 'POST',
        data: formData,

        success: function (mensagem) {
            $('#mensagem-economico').text('');
            $('#mensagem-economico').removeClass()
            if (mensagem.trim() == "Salvo com Sucesso") {                        
            	//location.reload();
            	$('#mensagem-economico').addClass('text-success')
            	$('#mensagem-economico').text(mensagem)
            	window.location='conjugue.php';
            } else {
                $('#mensagem-economico').addClass('text-danger')
                $('#mensagem-economico').text(mensagem)
            }


        },

        cache: false,
        contentType: false,
        processData: false,

    });

});

</script>