<?php
class Estudiante_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    // Función para obtener todos los estudiantes
    public function obtener_estudiantes() {
        return $this->db->get('estudiante')->result();
    }

    // Función para agregar un nuevo estudiante
    public function agregar_estudiante($data) {
        return $this->db->insert('estudiante', $data);
    }

    // Función para actualizar los datos de un estudiante
    public function actualizar_estudiante($ci, $data) {
        $this->db->where('ci', $ci);
        return $this->db->update('estudiante', $data);
    }

    // Función para eliminar un estudiante
    public function eliminar_estudiante($ci) {
        return $this->db->delete('estudiante', array('ci' => $ci));
    }
}
?>
