
<!-- Cabecera -->
<?php 
    include "../header.inc.php";
    require_once "../conexion.inc.php";
    //session_start();
?>

<!-- Cuerpo -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="../index2.php">FCPN</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link " aria-current="page" href="../informatica/index.php">INFORMATICA</a></li>
                        <li class="nav-item"><a class="nav-link" href="../matematica/index.php">KARDEX</a></li>
                        <li class="nav-item"><a class="nav-link active" href="#!">INSTITUTO DE INVESTIGACION</a></li>
                    </ul>
                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link disabled">Bienvenido <?php echo $_SESSION["idusuario"] ?></a></li>
                        <li class="nav-item"><a class="nav-link " aria-current="page" href="../cerrarsesion.php">Cerrar Sesion</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <header class="py-5 bg-image-full" style="background-image: url('../imagenes/08 FONDO INV.JPG')">
            <div class="text-center my-5">
                <img class="img-fluid rounded-circle mb-4" src="../imagenes/07 LOGO INV.JPG" alt="..." />
                <h1 class="text-white fs-1 fw-bolder">INSTITUTO DE INVESTIGACION</h1>
                <p class="text-white-50 mb-1 fs-1">UNIVERSIDAD MAYOR DE SAN ANDRES</p>
            </div>
        </header>

        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h2 style="color:#1F618D">INSTITUTO DE INVESTIGACION</h2>
                        <p class="lead">El Instituto de Investigaciones en Informática (III), es parte de la Carrera de Informática de la Facultad de Ciencias Puras y Naturales. Inaugurado el 16 de marzo de 1990, el III es un centro de investigación científica y de formación universitaria, de diferentes áreas de las ciencias de la computación y tecnología. Sus temas de investigación incluyen informática teórica, educación y TIC's, diseño y desarrollo de sistemas, simulación y modelado de sistemas e inteligencia artificial.</p>
                    
                    </div>
                </div>
            </div>
        </section>

<!-- Footer-->
<?php 
    include "../footer.inc.php";
?>