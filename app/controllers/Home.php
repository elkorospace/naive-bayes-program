<?php

class Home extends BaseController{

    public function index(){

        /* Get data option */
        $data = [
            'title' => 'Input Testing',
            'Prestasi_kerja' => $this->model('Home_model')->getKriteria('prestasi_kerja'),
            'Sikap_kerja'    => $this->model('Home_model')->getKriteria('sikap_kerja'),
            'Managerial'     => $this->model('Home_model')->getKriteria('managerial'),
            'Kematangan'     => $this->model('Home_model')->getKriteria('kematangan'),
            'Komunikasi'     => $this->model('Home_model')->getKriteria('komunikasi'),
            'Kerjasama'      => $this->model('Home_model')->getKriteria('kerjasama'),
            'Loyalitas'      => $this->model('Home_model')->getKriteria('loyalitas'),
            'Disiplin'       => $this->model('Home_model')->getKriteria('disiplin'),
            'Inisiatif'      => $this->model('Home_model')->getKriteria('inisiatif'),
            'Ide'            => $this->model('Home_model')->getKriteria('ide')
        ];
        
        /* tampilkan halaman */
        $this->view('Layout/header',$data);
        $this->view('Home/index',$data);
        $this->view('Layout/footer',$data);
    }

    public function getKriteria(){
        echo json_encode($this->model('Home_model')->getKriteria('training'));
    }

    public function naiveBayes(){

        $data['totalDataTraining'] = $this->model('Home_model')->countZ(null)['totalDataTraining'];
        
        if($data['totalDataTraining'] == '0')
        {
            echo json_encode('data training kosong');
            die;
        }

        /* Catch NIK */
        $data['nik'] = $_POST['vNIK'];
        
        /* Catch kriteria */
        $i = 0;
        $data['kriteria'] = array();
        foreach($_POST as $p){
            if($i>0){
                $data['kriteria'][] = $p;
            }
            $i++;
        }
        
        /* Create probabilitas */
        $arrayZ = ['Z5','Z4', 'Z3', 'Z2', 'Z1'];
        for($i=0; $i < count($arrayZ); $i++)
        {
            $z = $arrayZ[$i]; //Z5 or Z4 or ...
            $data['probabilitas'][$z] = $this->model('Home_model')->countZ($z)['Z']; //total Z5, or total Z4, or ..
        }
        
        /* Catch form's option */
        $arrayOption = [
            0=>['column'=>'A','kriteria'=>$_POST['vPrestasi']],
            1=>['column'=>'B','kriteria'=>$_POST['vSikap']],
            2=>['column'=>'C','kriteria'=>$_POST['vKerjasama']],
            3=>['column'=>'D','kriteria'=>$_POST['vKematangan']],
            4=>['column'=>'E','kriteria'=>$_POST['vDisiplin']],
            5=>['column'=>'F','kriteria'=>$_POST['vInisiatif']],
            6=>['column'=>'G','kriteria'=>$_POST['vLoyalitas']],
            7=>['column'=>'H','kriteria'=>$_POST['vIde']],
            8=>['column'=>'I','kriteria'=>$_POST['vManagerial']],
            9=>['column'=>'J','kriteria'=>$_POST['vKomunikasi']]
        ];
        
        /* Count Total each kriteria by Z */
        $XX = [];
        for($i=0; $i < count($arrayOption); $i++)
        {
            for($j=0; $j < count($arrayZ); $j++)
            {
                $XX[$arrayOption[$i]['kriteria']][$arrayZ[$j]] = $this->model('Home_model')->countColByZ(
                    $arrayOption[$i]['column'], 
                    $arrayOption[$i]['kriteria'],$arrayZ[$j]
                );
            }
        }
        $data['naivebayes'] = $XX;
        
        /* Send to naivebayes.js */
        echo json_encode($data);
    }

    public function deleteTraining(){
        echo json_encode($this->model('Home_model')->deleteTraining());
    }

    public function inputTraining(){
        
        /* ---------------------------------- 
        this function using PhpOffice library 
        -------------------------------------
        */

        $file_mimes = array('application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
 
        if(isset($_FILES['fileTraining']['name']) && in_array($_FILES['fileTraining']['type'], $file_mimes)) {
        
            $arr_file = explode('.', $_FILES['fileTraining']['name']);
            $extension = end($arr_file);
        
            if('csv' == $extension) {
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();
            } else {
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
            }

            $spreadsheet = $reader->load($_FILES['fileTraining']['tmp_name']);
            $sheetData = $spreadsheet->getActiveSheet()->toArray();
            
            if(count($sheetData[0]) < 13 || count($sheetData[0]) > 13){
                echo json_encode('gagal');
                die;
            }else{
                echo json_encode('berhasil');
            }
            
            for($i = 1;$i < count($sheetData);$i++)
            {
                $data['NIK'] = $sheetData[$i]['1'];
                $k = 2;
                for($j=0;$j<count(range('A','J'));$j++){
                    $data[range('A','J')[$j]] = $sheetData[$i][strval($k)];
                    $k++;
                }
                $data['Z'] = $sheetData[$i]['12'];
                
                $this->model('Home_model')->inputTraining($data);
            }
            
        }
    }

}
?>