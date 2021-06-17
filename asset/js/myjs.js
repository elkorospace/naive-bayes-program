const BASE_URL = $('span#base-url').data('url');

/*
  Input data training 
*/
function inputTraining(t,event){
    event.preventDefault();
    Swal.fire({
        html:
          `<form id="input-training" class="w-full">
            <input type="file" name="fileTraining" class="w-full mb-6 text-xl" onchange="checkExtension(this);">
            
            <button class="bg-green-700 w-full py-2 flex justify-center uppercase tracking-widest text-xl text-white rounded opacity-60 cursor-not-allowed" disabled>
                <h1>kirim</h1>
                <img src="${BASE_URL}asset/img/loading.svg" class="hidden w-6">
            </button>
          </form>`,
        showCloseButton: true,
        showConfirmButton: false,
        showCancelButton: false,
        focusConfirm: false,
    });

    document.querySelector('form#input-training').addEventListener("submit",uploadTraining);
}

function checkExtension(e){
    let inputFile = e;
    e.nextElementSibling.classList.add('hover:bg-green-600');
    e.nextElementSibling.classList.remove('cursor-not-allowed');
    e.nextElementSibling.classList.remove('opacity-60');
    e.nextElementSibling.removeAttribute('disabled');
    
    let exktensionFile = inputFile.files[0].type;
    if(!exktensionFile.includes('vnd')){
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Yang anda upload bukan file xlsx!',
        })
        inputFile.value = "";
        return false;
    }
}

function uploadTraining(e){
    e.preventDefault();
    $('#input-training h1').addClass('hidden');
    $('#input-training img').removeClass('hidden');

    let formData = new FormData();
    
    e.target.querySelectorAll('input').forEach(e => {
        formData.append(e.name,e.files[0],e.value);
    });
    
    $.ajax({
        url : BASE_URL+'Testi/inputTraining',
        type : 'POST',
        data : formData,
        processData: false,
        contentType: false,
        success:(e)=>{
            $('#input-training img').addClass('hidden');
            $('#input-training h1').removeClass('hidden');
            
            let result = JSON.parse(e);

            if(result === 'berhasil'){
                doAlert(result,'data telah ditambah','success');
            }else{
                doAlert(result,'*tabel tidak sesuai format','error');
            }
            
            function doAlert(result,pesan,icon){
                Swal.fire({
                    title:result+' !!',
                    text:pesan,
                    icon:icon,
                    footer: (result === 'berhasil') ? '' : '<a href="https://drive.google.com/drive/folders/1eY-1_L1jLbmWjoZGRelcmSDw3g0A7WX0?usp=sharing" style="color:#2778c4;text-decoration:underline;" target="_blank">download file data training</a>'
                });
            }
        }
    });
}

/*
  Delete data training 
*/
function deleteTraining(t,event){
    event.preventDefault();

    swal.fire({
        title: 'Anda yakin ?',
        text:'Semua data pada table training akan terhapus',
        showDenyButton: true,
        denyButtonText: `tidak`,
        confirmButtonText: `hapus`,
        icon:'warning'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: BASE_URL+'Testing/deleteTraining',
                type : 'POST',
                success: function(){
                    Swal.fire({
                        title:'Berhasil',
                        text:'Data training sudah terhapus',
                        icon:'success'
                    });
                }
            });
        }
    })
}

/*
  Info Kriteria dan Level
*/
function getKriteria(t,event){
    event.preventDefault();
    let tbodyTr = ``;

    $.ajax({
        url: BASE_URL+'Testing/getKriteria',
        type : 'POST',
        success: function(dataBack){
            let result = JSON.parse(dataBack);
            
            result.forEach((e,i) =>{
                if (i>1) {
                    tbodyTr += `<tr class="text-center">
                    <td class="p-2 border-2 border-black">
                        ${e.column_name}
                    </td>
                    <td class="p-2 border-2 border-black capitalize tracking-wide">
                        ${e.column_comment}
                    </td>
                </tr>`;
                }
            })

            createTableInfo(tbodyTr);
        }
    });

}

function createTableInfo(tbodyTr){
    Swal.fire({
        html:
        `<div class="mt-8 flex justify-center text-xs">
            <table id="kriteria" class="text-black">
                <thead>
                    <tr class="uppercase tracking-widest">
                        <th class="p-2 border-2 border-black">KODE</th>
                        <th class="p-2 border-2 border-black">KETERANGAN</th>
                    </tr>
                </thead>
                <tbody>
                    ${tbodyTr}
                </tbody>
            </table>

            <table id="level" class="ml-2 text-black">
                <thead>
                    <tr class="uppercase tracking-widest">
                        <th class="p-2 border-2 border-black">LEVEL</th>
                        <th class="p-2 border-2 border-black">KETERANGAN</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="text-center">
                        <td class="p-2 border-2 border-black">5</td>
                        <td class="p-2 border-2 border-black capitalize tracking-wide">Sangat Baik</td>
                    </tr>
                    <tr class="text-center">
                        <td class="p-2 border-2 border-black">4</td>
                        <td class="p-2 border-2 border-black capitalize tracking-wide">Baik</td>
                    </tr>
                    <tr class="text-center">
                        <td class="p-2 border-2 border-black">3</td>
                        <td class="p-2 border-2 border-black capitalize tracking-wide">Cukup Baik</td>
                    </tr>
                    <tr class="text-center">
                        <td class="p-2 border-2 border-black">2</td>
                        <td class="p-2 border-2 border-black capitalize tracking-wide">Kurang</td>
                    </tr>
                    <tr class="text-center">
                        <td class="p-2 border-2 border-black">1</td>
                        <td class="p-2 border-2 border-black capitalize tracking-wide">Sangat Kurang</td>
                    </tr>
                </tbody>
            </table>
        </div>`,
        showCloseButton: true,
        showConfirmButton: false,
        showCancelButton: false,
        focusConfirm: false,
    });
}

console.log(`Naive bayes Program
by: github.com/elkorospace`);