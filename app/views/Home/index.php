<!-- 
    Sidebar
-->
<?php include('components/sidebar.php') ?>

<span id="base-url" class="hidden" data-url="<?= BASE_URL; ?>"></span>

<!-- 
    Mobile Version Warning
--> 
<div class="h-screen w-screen flex justify-center items-center mylg:hidden">
    <div id="warning-mobile-version" class="w-72 h-72 flex flex-col justify-center items-center rounded">
        <h1 class="text-2xl font-bold opacity-90" style="font-family: lato;">Not Suport</h1>
        <h1 class="text-4xl uppercase mt-2 opacity-90" style="font-family: bebas;">Mobile Version</h1>
    </div>
</div>

<section id="container" class="flex-1 h-screen px-10 hidden mylg:flex flex-col" style="background-color: rgba(0, 0, 0, .6)">

    <h1 class="mt-4 capitalize font-sans text-white text-6xl">input data testing</h1>

    <form id="form-data-testing" method="post" action="" class="w-full mt-20">
        
        <!-- 
            input NIM & Run Algoritma 
        -->
        <div class="w-full flex justify-between">
            <input type='text' name='vNIK' placeholder='Masukkan NIK' class="p-2 rounded">

            <button class="bg-green-700 hover:bg-green-600 border-2 border-white w-16 py-3 rounded text-white uppercase tracking-widest flex justify-center" name="proccess" onclick="jalankanAlgo(this,event)">
                <img id="play" src="<?= BASE_URL; ?>asset/img/play.svg" class="w-4">
                <img id="loading" src="<?= BASE_URL; ?>asset/img/loading.svg" class="hidden w-4">
            </button>
        </div>

        <!-- 
            Option
        -->
        <div id="option-wraper" class="w-full mt-10 p-4 grid grid-cols-5 gap-6 rounded">
        
            <!-- Prestasi Kerja -->
            <select name='vPrestasi' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Prestasi Kerja --</option>
                <?php foreach($data['Prestasi_kerja'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>

            <!-- Sikap Kerja -->
            <select name='vSikap' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Sikap Kerja --</option>
                <?php foreach($data['Sikap_kerja'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>
            
            <!-- Kerjasama -->
            <select name='vKerjasama' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Kerjasama --</option>
                <?php foreach($data['Kerjasama'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>

            <!-- Kematangan -->
            <select name='vKematangan' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Kematangan --</option>
                <?php foreach($data['Kematangan'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>
            
            <!-- Disiplin -->
            <select name='vDisiplin' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Disiplin --</option>
                <?php foreach($data['Disiplin'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>
            
            <!-- Inisiatif -->
            <select name='vInisiatif' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Inisiatif --</option>
                <?php foreach($data['Inisiatif'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>

            <!-- Loyalitas -->
            <select name='vLoyalitas' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Loyalitas --</option>
                <?php foreach($data['Loyalitas'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>
            
            <!-- Ide -->
            <select name='vIde' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Ide --</option>
                <?php foreach($data['Ide'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>

            <!-- Managerial -->
            <select name='vManagerial' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- Managerial --</option>
                <?php foreach($data['Managerial'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>
            
            <!-- komunikasi -->
            <select name='vKomunikasi' class="w-full px-4 py-2 rounded">
                <option id='hide' value="">-- komunikasi --</option>
                <?php foreach($data['Komunikasi'] as $x) : ?>
                    <option value="<?php echo"$x[kode]"?>"> <?php echo "$x[klasifikasi] - $x[kode]"; ?> </option>
                <?php endforeach; ?>
            </select>
        </div>
    </form>

    <!-- 
        result
    -->
    <div id="result-wraper" class="w-full mt-8 py-2 flex-1 rounded flex overflow-hidden">

        <div id="result-probabilitas" class="flex-1 h-full flex flex-col text-center">
            <h1 class="text-white text-sm capitalize tracking-widest">Probabilitas</h1>
            <div id="tableProb-wraper" class="w-full flex-1 mt-2 px-4 flex justify-center overflow-auto"></div>
        </div>
        
        <div id="result-proccess1" class="flex-1 h-full flex flex-col px-4 border-l-2 text-center" style="border-color: rgba(255, 255, 255, 0.3);">
            <h1 class="text-white text-sm capitalize tracking-widest">Proccess 1</h1>
            <div id="target-proccess1" class="w-full flex-1 mt-2 flex flex-col overflow-auto"></div>
        </div>
        
        <div id="result-proccess2" class="flex-1 h-full flex flex-col px-4 border-l-2 text-center" style="border-color: rgba(255, 255, 255, 0.3);">
            <h1 class="text-white text-sm capitalize tracking-widest">Proccess 2 (final)</h1>
            <div id="proccess2-wraper" class="w-full flex-1 mt-2 flex flex-col overflow-auto"></div>
        </div>
    </div>

</section>