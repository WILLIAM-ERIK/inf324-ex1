<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verifica si se ha enviado un color desde el formulario
    if (isset($_POST["color"])) {
        $color = $_POST["color"];

        // Define los colores disponibles y sus códigos
        $colores = array(
            "Rojo" => "#FF0000",
            "Verde" => "#00FF00",
            "Azul" => "#0000FF"
        );

        // Verifica si el color seleccionado está en la lista
        if (array_key_exists($color, $colores)) {
            $color_fondo = $colores[$color];
            echo '<style>body { background-color: ' . $color_fondo . '; }</style>';
        } else {
            echo "Color no válido.";
        }
    }
}
?>

