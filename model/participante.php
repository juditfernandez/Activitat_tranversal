<?php
class Participante {
    //ATRIBUTOS
    private $id_parti;
    private $nom_parti;
    private $apellido_parti;
    private $apellido2_parti;
    private $edad_parti;
    private $fecha_nacimiento;
    private $sexo_parti;
    private $id_ins;
    private $num_dorsal;

    //CONSTRUCTOR 
    function __construct() {
    
    }

    //GETTERS
    public function getId_parti()
    {
        return $this->id_parti;
    }

    public function getNom_parti()
    {
        return $this->nom_parti;
    }

    public function getApellido_parti()
    {
        return $this->apellido_parti;
    }

    public function getEdad_parti()
    {
        return $this->edad_parti;
    }
 
    public function getSexo_parti()
    {
        return $this->sexo_parti;
    }

    public function getId_ins()
    {
        return $this->id_ins;
    }

    public function getNum_dorsal()
    {
        return $this->num_dorsal;
    }

    //SETTERS

    public function setNum_dorsal($num_dorsal)
    {
        $this->num_dorsal = $num_dorsal;

        return $this;
    }

    public function setId_ins($id_ins)
    {
        $this->id_ins = $id_ins;

        return $this;
    }

    public function setSexo_parti($sexo_parti)
    {
        $this->sexo_parti = $sexo_parti;

        return $this;
    }

    public function setEdad_parti($edad_parti)
    {
        $this->edad_parti = $edad_parti;

        return $this;
    }

    public function setApellido_parti($apellido_parti)
    {
        $this->apellido_parti = $apellido_parti;

        return $this;
    }

    public function setNom_parti($nom_parti)
    {
        $this->nom_parti = $nom_parti;

        return $this;
    }

    public function setId_parti($id_parti)
    {
        $this->id_parti = $id_parti;

        return $this;
    }

    public function getApellido2_parti()
    {
        return $this->apellido2_parti;
    }

    public function setApellido2_parti($apellido2_parti)
    {
        $this->apellido2_parti = $apellido2_parti;

        return $this;
    }

    public function getFecha_nacimiento()
    {
        return $this->fecha_nacimiento;
    }

    public function setFecha_nacimiento($fecha_nacimiento)
    {
        $this->fecha_nacimiento = $fecha_nacimiento;

        return $this;
    }
}
?>