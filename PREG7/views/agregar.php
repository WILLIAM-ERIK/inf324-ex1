<!DOCTYPE html>
<html>
<head>
    <title>Agregar Estudiante</title>
</head>
<body>
    <h1>Agregar Estudiante</h1>
    <form method="post" action="<?php echo site_url('estudiante/agregar'); ?>">
        <label>CI:</label>
        <input type="text" name="ci" required>
        <br>
        <label>Matrícula:</label>
        <input type="text" name="matricula" required>
        <br>
        <label>Código de Carrera:</label>
        <input type="text" name="cod_carrera">
        <br>
        <input type="submit" value="Agregar">
    </form>
</body>
</html>
