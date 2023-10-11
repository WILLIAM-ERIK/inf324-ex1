<?php
class Estudiante extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('Estudiante_model');
    }

    // Función para mostrar la lista de estudiantes
    public function index() {
        $data['estudiantes'] = $this->Estudiante_model->obtener_estudiantes();
        $this->load->view('estudiante/lista', $data); // Puedes crear una vista para mostrar la lista de estudiantes
    }

    // Función para agregar un nuevo estudiante
    public function agregar() {
        if ($_POST) {
            $data = array(
                'ci' => $this->input->post('ci'),
                'matricula' => $this->input->post('matricula'),
                'cod_carrera' => $this->input->post('cod_carrera')
            );
            $this->Estudiante_model->agregar_estudiante($data);
            redirect('estudiante');
        }
        $this->load->view('estudiante/agregar'); // Puedes crear una vista para agregar estudiantes
    }

    // Función para editar los datos de un estudiante
    public function editar($ci) {
        if ($_POST) {
            $data = array(
                'matricula' => $this->input->post('matricula'),
                'cod_carrera' => $this->input->post('cod_carrera')
            );
            $this->Estudiante_model->actualizar_estudiante($ci, $data);
            redirect('estudiante');
        }
        $data['estudiante'] = $this->Estudiante_model->obtener_estudiante_por_ci($ci);
        $this->load->view('estudiante/editar', $data); // Puedes crear una vista para editar estudiantes
    }

    // Función para eliminar un estudiante
    public function eliminar($ci) {
        $this->Estudiante_model->eliminar_estudiante($ci);
        redirect('estudiante');
    }
}
?>
