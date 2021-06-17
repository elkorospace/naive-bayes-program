<?php

class Home_model{
    
    public $db;

    /* 
    CONSTRUCT
    */
    public function __construct()
    {
        $this->db = new Database;
    }

    /*
    Probabilitas
    */
    public function countZ($z){
        if($z != null){
            $this->db->query("SELECT count(Z) as Z from training where Z = '$z'");
            return $this->db->singleResult();
        }else{
            $this->db->query("SELECT count(no) as totalDataTraining from training");
            return $this->db->singleResult();
        }
    }
    
    /*
    count column - Z
    */
    public function countColByZ($col,$kriteria,$Z){
        $this->db->query("SELECT $col as kode, Z, count(*) as jumlah FROM training WHERE $col='$kriteria' AND Z='$Z'");
        return $this->db->singleResult();
    }

    /* 
    Get Kriteria
    */
    public function getKriteria($table){
        if($table == 'training'){
            $this->db->query("SELECT column_name,column_comment FROM information_schema.columns WHERE table_name='$table' AND TABLE_SCHEMA ='db_uts_ketir'");
            return $this->db->multiResult();
        }else{
            $this->db->query("SELECT * FROM $table");
            return $this->db->multiResult();
        }
    }
    
    /* 
    Get Tables Name
    */
    public function getTablesName(){
        $this->db->query("SELECT * FROM INFORMATION_SCHEMA.TABLES");
        return $this->db->singleResult();
    }
    
    /* 
    Delete Training
    */
    public function deleteTraining(){
        $this->db->query("TRUNCATE TABLE training");
        return $this->db->execute();
    }
    
    /*
    Input Training
    */
    public function inputTraining($data){
        $this->db->query("INSERT INTO training (no,NIK,A,B,C,D,E,F,G,H,I,J,Z) values (0,:NIK,:A,:B,:C,:D,:E,:F,:G,:H,:I,:J,:Z)");
        $this->db->bind('NIK',$data['NIK']);
        $this->db->bind('A',$data['A']);
        $this->db->bind('B',$data['B']);
        $this->db->bind('C',$data['C']);
        $this->db->bind('D',$data['D']);
        $this->db->bind('E',$data['E']);
        $this->db->bind('F',$data['F']);
        $this->db->bind('G',$data['G']);
        $this->db->bind('H',$data['H']);
        $this->db->bind('I',$data['I']);
        $this->db->bind('J',$data['J']);
        $this->db->bind('Z',$data['Z']);
        $this->db->execute();
    }

}

?>