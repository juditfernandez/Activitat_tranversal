<?php
class Inscripcion {
    //ATRIBUTOS
    private $id_ins;
    private $fecha_ins;
    private $precio_ins;

    //CONSTRUCTOR 
    function __construct() {

    }

    //GETTERS
    public function getId_ins()
    {
        return $this->id_ins;
    }

    public function getFecha_ins()
    {
        return $this->fecha_ins;
    }

    public function getPrecio_ins()
    {
        return $this->precio_ins;
    }

   

    //SETTERS
    
    public function setPrecio_ins($precio_ins)
    {
        $this->precio_ins = $precio_ins;

        return $this;
    }

    public function setFecha_ins($fecha_ins)
    {
        $this->fecha_ins = $fecha_ins;

        return $this;
    }
    
    public function setId_ins($id_ins)
    {
        $this->id_ins = $id_ins;

        return $this;
    }
}
?>