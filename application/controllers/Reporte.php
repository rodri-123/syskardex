<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reporte extends CI_ControllerBase {
   function __construct(){
      parent::__construct();
   }

   public function index()
   {
      $this->addJs("reporte.js");

      $alto = $this->db->from("producto")->where("stock_pro >", 10)->where("estado", "A")->get()->result();

      $medio = $this->db->from("producto")->where("stock_pro <=", 10)->where("stock_pro >", 0)->where("estado", "A")->get()->result();

      $nada = $this->db->from("producto")->where("stock_pro", 0)->where("estado", "A")->get()->result();

      $this->setTempleate("Reporte", "reporte/index", array("alto"=>$alto, "medio"=>$medio, "nada"=>$nada), 3);
   }

   function getMovimientos(){
      if($this->input->is_ajax_request() && $this->input->method(TRUE)=='POST'){
         $id_pro = $this->input->post("id_pro");
         $Datos = $this->db->from("det_movimiento")
         ->join("movimiento", "det_movimiento.id_mov = movimiento.id_mov")
         ->join("tipo_movimiento", "movimiento.id_tmov = tipo_movimiento.id_tmov")
         ->join("unidad_medida", "det_movimiento.id_uni = unidad_medida.id_uni")
         ->join("producto", "det_movimiento.id_pro = producto.id_pro")
         ->where("det_movimiento.id_pro", $id_pro)
         ->where("movimiento.estado", "A")
         ->get()->result();

         echo json_encode($Datos);
      }else{
         redirect($this->base_url."admin", "refresh");
      }
   }
}
