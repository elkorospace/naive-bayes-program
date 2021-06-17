<?php 

// spl_autoload_register(function($file){
//     require_once 'config/'.$file.'.php';
// });

require_once 'config/App.php';
require_once 'config/BaseController.php';
require_once 'config/Config.php';
require_once 'config/Database.php';

require_once 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Csv;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;

?>