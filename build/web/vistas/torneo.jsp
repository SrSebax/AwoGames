<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href='../img/favicon.png' rel="icon">
        <script src="https://kit.fontawesome.com/21796de8cf.js" crossorigin="anonymous"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/estiloprincipal.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/12d41c5d30.js" crossorigin="anonymous"></script>

        <title>Nuestro torneo | AwoGames</title>


    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"><i>AwoStore</i></a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="Principal.jsp"><i class="fas fa-home"></i> Principal</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="torneo.jsp"><i class="fa-solid fa-gamepad"></i> Torneo</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link" href="../Controlador?accion=home"><i class="fa-brands fa-shopify"></i> Tienda<span class="sr-only">(current)</span></a>
                    </li>
                </ul>    
            </div>
        </nav>


        <div class="row">
            <div class="col-xs-12">
                <div id="carousel-1" class="carousel slide" data-ride="carousel" data-interval="5000">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-1" data-slide-to="1"></li>
                        <li data-target="#carousel-1" data-slide-to="2"></li>
                    </ol>
                    <!-- Envoltorio para portaobjetos -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="../img/call-of-duty.png" alt="Carousel Image">
                            <div class="carousel-caption">
                                <h3>Call Of Duty</h3>
                                <p>Serie de videojuegos de disparos en primera persona, de estilo bélico</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../img/fortnite-battle.png" alt="Carousel Image">
                            <div class="carousel-caption">
                                <h3>Fortnite Battle Royale</h3>
                                <p>Battle Royale gratuito con un montón de modos de juego diferentes para todo tipo de jugadores</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../img/rocket-league.png" alt="Carousel Image">
                            <div class="carousel-caption">
                                <h3>Rocket League</h3>
                                <p>Videojuego que combina el fútbol con los vehículos</p>
                            </div>
                        </div>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-1" role="button" dataslide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 20px;">
            <div class="col-xs-12">
                <blockquote>
                    <p>El evento AwoGames contará con tres disciplinas que son Fortnite, Rocket League y Call Of Duty, juegos que están disponibles en plataformas como PS4/PS5, Xbox One y PC.</p>
                    <p>Medellin es uno de los lugares del país con más crecimiento en la industria de los deportes electrónicos. Es por ello, que empresas como AwoGames, le apuestan al boom de los Esports.</p>
                    <p>Va dirigido a los residentes mayores de 16 años de Medellin, que tienen en sus hobbies, las competencias de deportes electrónicos.
                </blockquote>
            </div>
        </div>
    </div>



    <!-- JQuery (necesario para los complementos de JavaScript de Bootstrap) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Incluya todos los complementos compilados (a continuación) o incluya archivos
   individuales según sea necesario -->
    <script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
