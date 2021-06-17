<nav class="h-screen w-44 hidden mylg:block">

    <!-- Logo -->
    <div class="w-full pt-4 pl-4 pr-3">
        <img src="<?= BASE_URL; ?>asset/img/data-mining.svg" class="w-full">
        <h1 class="text-white text-center uppercase tracking-widest" style="font-size: 1.44rem; font-family: bebas;">Naive Bayes</h1>
    </div>
    
    <!-- Buttons Sidebar -->
    <a href="" class="navbar-btn mt-10 border-t-2 border-white pt-7 pl-4 flex items-center w-full opacity-80 hover:opacity-100" onclick="inputTraining(this,event);">
        <img src="<?= BASE_URL; ?>asset/img/xls.svg" class="w-6">
        <h1 class="text-white ml-2">Input Training</h1>
    </a>
    <a href="" class="navbar-btn mt-7 border-t-2 border-white pt-7 pl-4 flex items-center w-full  opacity-80 hover:opacity-100"
    onclick="deleteTraining(this,event);">
        <img src="<?= BASE_URL; ?>asset/img/delete.svg" class="w-6">
        <h1 class="text-white ml-2" style="font-size: 0.92rem;">Delete Training</h1>
    </a>
    <a href="" class="navbar-btn mt-7 border-t-2 border-white pt-7 pl-4 flex items-center w-full opacity-80 hover:opacity-100" onclick="getKriteria(this,event);">
        <img src="<?= BASE_URL; ?>asset/img/info.svg" class="w-6">
        <h1 class="text-white ml-2">Info Kriteria</h1>
    </a>
    
</nav>