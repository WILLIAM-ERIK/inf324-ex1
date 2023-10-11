<!DOCTYPE html>
<html>
<head>
    <title>Editar Estudiante</title>
</head>
<body>
    <h1>Editar Estudiante</h1>
    <form method="post" action="<?php echo site_url('estudiante/editar/' . $estudiante->ci); ?>">
        <label>CI:</label>
        <input type="text" name="ci" value="<?php echo $estudiante->ci; ?>" required>
        <br>
        <label>Matrícula:</label>
        <input type="text" name="matricula" value="<?php echo $estudiante->matricula; ?>" required>
        <br>
        <label>Código de Carrera:</label>
        <input type="text" name="cod_carrera" value="<?php echo $estudiante->cod_carrera; ?>">
        <br>
        <input type="submit" value="Actualizar">
    </form>
</body>
</html>
