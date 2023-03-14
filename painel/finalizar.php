<?php 
@session_start();
require_once('../conexao.php');
if(@$_SESSION['id_beneficiario'] == ""){
	echo "<script>window.location='../index.php'</script>";
	exit();
}


$id = $_SESSION['id_beneficiario'];
//recuperar os dados do usuário logado
$query = $pdo->query("SELECT * FROM beneficiarios where id = '$id' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @count($res);

if($total_reg > 0){
	$nome_ben = $res[0]['nome'];
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $nome_sistema?></title>

      <!----======== FAVICON ======== -->
  <link rel="icon" type="image/x-icon" href="../img/favicon.ico">

  <script type="text/javascript" src="./DataTables/datatables.min.js"></script>
  <script type="text/javascript" src="./js/api.js"></script>


    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css" rel="stylesheet" />
    
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="./css/final.css">


</head>
<body>

<header>

    

    <!--  
    <nav class="navbar navbar-expand-lg navbar-dark d-none d-lg-block" style="z-index: 2000;">
      <div class="container-fluid">

        <a class="navbar-brand nav-link" target="_blank" href="https://mdbootstrap.com/docs/standard/">
          <strong>MDB</strong>
        </a>
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarExample01"
          aria-controls="navbarExample01" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarExample01">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item active">
              <a class="nav-link" aria-current="page" href="#intro">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://www.youtube.com/channel/UC5CF7mLQZhvx8O5GODZAhdA" rel="nofollow"
                target="_blank">Learn Bootstrap 5</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://mdbootstrap.com/docs/standard/" target="_blank">Download MDB UI KIT</a>
            </li>
          </ul>

          <ul class="navbar-nav list-inline">

            <li class="">
              <a class="nav-link" href="https://www.youtube.com/channel/UC5CF7mLQZhvx8O5GODZAhdA" rel="nofollow"
                target="_blank">
                <i class="fab fa-youtube"></i>
              </a>
            </li>
            <li class="">
              <a class="nav-link" href="https://www.facebook.com/mdbootstrap" rel="nofollow" target="_blank">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://twitter.com/MDBootstrap" rel="nofollow" target="_blank">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://github.com/mdbootstrap/mdb-ui-kit" rel="nofollow" target="_blank">
                <i class="fab fa-github"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    -->

    
    

    <!-- Carousel wrapper -->
    <div id="introCarousel" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel">
      <!-- Inner -->
      <div class="carousel-inner">
        <!-- Single item -->
        <div class="carousel-item active">
          <div class="mask" style="background-color: rgba(50, 115, 220, 0.8);;">
            <div class="d-flex justify-content-center align-items-center h-100">
              <div class="text-white text-center">
                <h2 class="mb-4">PARABÉNS</h2>
                <h1 class="mb-3"><?= $nome_ben?></h1>
                <h5 class="mb-4">Atualização cadastral realizada com sucesso!  <i class="far fa-thumbs-up"></i></h5>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Inner -->
    </div>
    <!-- Carousel wrapper -->
  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-5">
    <div class="container">

      <!--Section: Content-->
      <section class="text-center">
        <h4 class="mb-5"><strong>Facilis consequatur eligendi</strong></h4>

        <div class="row">
          <div class="col-lg-4 col-md-12 mb-4">
            <div class="card">
              <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                <img src="https://mdbootstrap.com/img/new/standard/nature/184.jpg" class="img-fluid" />
                <a href="#!">
                  <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                </a>
              </div>
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  Some quick example text to build on the card title and make up the bulk of the
                  card's content.
                </p>
                <a href="#!" class="btn btn-primary">Button</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card">
              <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                <img src="https://mdbootstrap.com/img/new/standard/nature/023.jpg" class="img-fluid" />
                <a href="#!">
                  <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                </a>
              </div>
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  Some quick example text to build on the card title and make up the bulk of the
                  card's content.
                </p>
                <a href="#!" class="btn btn-primary">Button</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card">
              <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                <img src="https://mdbootstrap.com/img/new/standard/nature/111.jpg" class="img-fluid" />
                <a href="#!">
                  <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                </a>
              </div>
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  Some quick example text to build on the card title and make up the bulk of the
                  card's content.
                </p>
                <a href="#!" class="btn btn-primary">Button</a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--Section: Content-->


    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="bg-light text-lg-start">

    <div class="text-center py-4 align-items-center">
      <p>Siga-nos em nossas redes sociais</p>
      <a href="https://www.youtube.com/channel/UC5CF7mLQZhvx8O5GODZAhdA" class="btn btn-primary m-1" role="button"
        rel="nofollow" target="_blank">
        <i class="fab fa-youtube"></i>
      </a>
      <a href="https://www.facebook.com/mdbootstrap" class="btn btn-primary m-1" role="button" rel="nofollow"
        target="_blank">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="https://twitter.com/MDBootstrap" class="btn btn-primary m-1" role="button" rel="nofollow"
        target="_blank">
        <i class="fab fa-instagram"></i>
      </a>
    </div>

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      Secretaria do Trabalho e Bem-Estar Social - <strong>UGAM/NTI</strong>
    </div>
    <!-- Copyright -->
  </footer>
  <!--Footer-->

    
</body>
</html>









