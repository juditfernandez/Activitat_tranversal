<!DOCTYPE html>
<html>
    <head>
        <title>CSS Website Layout</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="../css/estilos.css">
        <script src="../js/validacion.js"></script>
        </head>

    <body>
            
        <div class="topnav2">
            <a href="index.html" style="margin-left: 36%">Inicio</a>
            <a href="#">Categorias</a>
            <a href="#">Noticias</a>
            <a href="inscribirse.php">Inscripción</a>
            <div class="idioma">
                    <select data-width="fit" style="margin-left: 350px">
                        <option>Idioma</option>
                        <option data-content='<span class="flag-icon flag-icon-us"></span> English'>English</option>
                        <option data-content='<span class="flag-icon flag-icon-mx"></span> Español'>Español</option>
                        <input type="submit" value="Enviar">
                </div>
        </div>
        <h2>Rellena tus datos para inscribirte</h2>
        <form action="inscribirse.php" method="POST" class="formu" style="margin-left: 430px; padding-top: 30px;" onsubmit="return validarFor()">
            <button onclick="return validarDNI()">Validar DNI</button><input class="dni" type="text" id="DNI_parti" name="DNI_parti" placeholder="DNI..">
            <input class="nom" type="text" id="nom_parti" name="nom_parti" placeholder="nombre.."><br>
            <input class="ape" type="text" id="apellido_parti" name="apellido_parti" placeholder="Primer apellido..">
            <input class="ape" type="text" id="apellido2_parti" name="apellido2_parti" placeholder="Segundo apellido.."><br>
            <input class="for" type="text" id="email_parti" name="email_parti" placeholder="email..">
            <select class="for" type="text" id="sexo_parti" name="sexo_parti">
                <option>mujer</option>
                <option>hombre</option>
                <option>niños/niñas</option>
                <option>no decir</option>
            </select>
            <input class="for" style="width: 186px" type="date" id="fecha_nacimiento" name="fecha_nacimiento"><br>
            <select class="for" type="text" id="edad_parti" name="edad_parti" placeholder="email..">
                <option>0-6</option>
                <option>7-18</option>
                <option>19-30</option>
                <option>31-60</option>
                <option>61 o mas</option>
            </select>
            <input class="for" style="width: 186px" type="number" id="num_dorsal" name="num_dorsal" placeholder="Dorsal..."><br>
            <div id="message"></div><br>
            <input class="aceptar" type="submit" value="Aceptar" name="submit">
        </form>
        <?php
        if(isset($_POST['submit'])){
            require_once '../model/participanteDAO.php';
            $ParticipanteDAO = new ParticipanteDAO();
            echo $ParticipanteDAO->insertarParticipante();
        }
        ?>
        <br><br><br>
        <footer>
            <h3><strong>Contacto</strong></h3>
            <p>12 de octubre del 2020</p>
            <p>Jesuitas Bellvitge JOAN XXIII</p>
            <p>Creadora: Judit Fernández Vico</p>
        </footer>
    </body>
</html>