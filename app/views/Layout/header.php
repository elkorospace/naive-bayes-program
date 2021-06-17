<!doctype html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?= $data['title']; ?></title>
    <meta charset="utf-8">
    
    <link rel="shortcut icon" href="<?= BASE_URL; ?>asset/img/data-mining-copy.svg" type="image/x-icon">
    <link rel="stylesheet" href="<?= BASE_URL; ?>asset/tailwind/css/sweetalert2.min.css">
    <link rel="stylesheet" href="<?= BASE_URL; ?>asset/tailwind/css/tailwind.css">
    <style>
        body{
            background-image: url('<?= BASE_URL; ?>asset/img/bg-1.jpeg');
            background-size: cover;
            background-attachment: fixed;
        }
        @font-face {
            font-family: 'bebas';
            src: url('<?= BASE_URL ?>asset/font/BebasNeue-Regular.ttf');
        }
        @font-face {
            font-family: 'lato';
            src: url('<?= BASE_URL ?>asset/font/Lato-Light.ttf');
        }
        #option-wraper,nav,
        #result-wraper,#warning-mobile-version{
            background-color: rgba(255, 255, 255, .4);
            backdrop-filter: blur(4px);
            -webkit-backdrop-filter: blur(4px);
        }
    </style>
</head>
<body class="flex">
