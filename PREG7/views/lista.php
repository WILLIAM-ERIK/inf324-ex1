<!DOCTYPE html>
<html>
<head>
    <title>Lista de Estudiantes</title>
</head>
<body>
    <h1>Lista de Estudiantes</h1>
    <table>
        <thead>
            <tr>
                <th>CI</th>
                <th>Matrícula</th>
                <th>Código de Carrera</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($estudiantes as $estudiante): ?>
                <tr>
                    <td><?php echo $estudiante->ci; ?></td>
                    <td><?php echo $estudiante->matricula; ?></td>
                    <td><?php echo $estudiante->cod_carrera; ?></td>
                    <td>
                        <a href="<?php echo site_url('estudiante/editar/' . $estudiante->ci); ?>">Editar</a>
                        <a href="<?php echo site_url('estudiante/eliminar/' . $estudiante->ci); ?>">Eliminar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <a href="<?php echo site_url('estudiante/agregar'); ?>">Agregar Estudiante</a>
</body>
</html>
