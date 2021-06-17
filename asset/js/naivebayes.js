
function jalankanAlgo(t,event){
    event.preventDefault();
    
    /* 
    Get form's data 
    */
    let formData = $('#form-data-testing').serializeArray();

    /* 
    form validation 
    */
    let notComplete = false;
    formData.forEach(e => {
        if(e.value === ""){
            swal.fire({
                title: 'GAGAL',
                text:'Ada input yang kosong',
                showDenyButton: false,
                confirmButtonText: `OKE`,
                icon:'error'
            });
            notComplete = true;
        }
    });

    if(!notComplete){

        /* 
        Loading Animation Active
        */
        t.querySelector('img#play').classList.add('hidden');
        t.querySelector('img#loading').classList.remove('hidden');

        $.ajax({
            url: BASE_URL+'Testing/naiveBayes',
            type : 'POST',
            data: formData,
            success: function(dataBack){
    
                /*  
                Loading Animation Off
                */
                t.querySelector('img#play').classList.remove('hidden');
                t.querySelector('img#loading').classList.add('hidden');
                
                /*  
                Get data from controllers/Home.php
                */
                let result = JSON.parse(dataBack);

                if(result === 'data training kosong'){
                    Swal.fire({
                        title: 'GAGAL',
                        text:'data training pada database kosong',
                        showDenyButton: false,
                        confirmButtonText: `OKE`,
                        icon:'warning',
                        footer: '<a href="https://drive.google.com/drive/folders/1eY-1_L1jLbmWjoZGRelcmSDw3g0A7WX0?usp=sharing" style="color:#2778c4;text-decoration:underline;" target="_blank">download file data training</a>'
                    });
                    return 0;
                }
    
                /* 
                input kriteria to array 
                */
                let arrayKriteria = [];
                for (let k in result['kriteria']){
                    if(result['kriteria'][k] !== 'null'){
                        arrayKriteria.push(result['kriteria'][k]);
                    }
                }
                
                /* --------------------
                   Table Probabilitas
                -------------------- */
                // table head
                let tableProb = `<table class="w-full text-black">
                    <thead style="background-color: rgba(0,0,0,0.5);">
                        <tr class="uppercase tracking-widest text-xs text-white">
                            <th class="p-2 border-2 border-black">Kriteria</th>
                            <th class="p-2 border-2 border-black">Skor</th>
                            <th class="p-2 border-2 border-black">Skor:total</th>
                        </tr>
                    </thead>
                    <tbody class="text-xs">`;
    
                // table body
                let row = '';
                let arraySkor = [];
                let arrayProb = [];
                for(var kriteria in result['probabilitas']){
                    
                    row += `<tr>
                    <td class="p-2 border-2 border-black">P(${kriteria})</td>
                    <td class="p-2 border-2 border-black">${result['probabilitas'][kriteria]}</td>
                    <td class="p-2 border-2 border-black">
                        ${parseFloat(result['probabilitas'][kriteria] / result['totalDataTraining']).toFixed(6)}
                    </td>
                    </tr>`;
    
                    /* 
                    input skor to array
                    */
                    arraySkor.push(result['probabilitas'][kriteria]);

                    /* 
                    input probabilitas to array
                    */
                    arrayProb.push(Number(parseFloat(result['probabilitas'][kriteria] / result['totalDataTraining']).toFixed(6)));
                }
    
                // insert body to Table Probabilitas
                tableProb += `${row}
                        <tr>
                            <td class="p-2 border-2 border-black">total</td>
                            <td class="p-2 border-2 border-black">${result['totalDataTraining']}</td>
                            <td class="p-2 border-2 border-black">skor/total</td>
                        </tr>
                    </tbody>
                </table>`;
                $('#tableProb-wraper').html(tableProb);
    
                /* --------------------
                   Table Proccess 1
                -------------------- */
                let b = 0;
                let j = 0;
                let k = 5;
                let bodyRow = '';
                let tableProccess1 = '';
                let allTableProccess1 = '';
                let arrayKesimpulan = {};
                let arrayKinerja = ['Z5','Z4','Z3','Z2','Z1'];
    
                for (var nb in result['naivebayes']) {
                    // create table
                    tableProccess1 += `<table class="w-full text-black mb-4">
                    <thead style="background-color: rgba(0,0,0,0.5);">
                        <tr class="uppercase tracking-widest text-xs text-white">
                            <th class="p-2 border-2 border-black w-3/6">Kriteria</th>
                            <th class="p-2 border-2 border-black w-auto">Jumlah</th>
                            <th class="p-2 border-2 border-black w-3/6">Hasil</th>
                        </tr>
                    </thead>
                    <tbody>`;
                    
                    for (var x in result['naivebayes'][nb]){
    
                        if(result['naivebayes'][nb][x].Z !== null){
                            arrayKesimpulan[`Z${k}`] += `|${result['naivebayes'][nb][x].jumlah}`;
                        }else{
                            arrayKesimpulan[`Z${k}`] += '|'+'0';
                        }
                        --k;
                        
                        // create body row
                        bodyRow += `<tr class="uppercase tracking-widest text-xs">
                            <td class="p-2 border-2 border-black w-3/6">P( [${arrayKriteria[b]}] | [${arrayKinerja[j]}] )</td>
                            <td class="p-2 border-2 border-black w-auto">${result['naivebayes'][nb][x]['jumlah']}</td>
                            <td class="p-2 border-2 border-black w-3/6">${parseFloat(result['naivebayes'][nb][x]['jumlah']/arraySkor[j]).toFixed(5)}</td>
                        </tr>`;
                        ++j;
                    }
                    k=5;
                    
                    // insert body row to table
                    tableProccess1 += `${bodyRow}
                        </tbody>
                    </table>`;
    
                    // save table to All table container
                    allTableProccess1 += tableProccess1;
    
                    // reset variable
                    tableProccess1 = '';
                    bodyRow = '';
                    j = 0;
    
                    ++b;
                }
                $('#result-proccess1 #target-proccess1').html(allTableProccess1);
    
                /* --------------------
                   Table Proccess 2
                -------------------- */
                
                // create two tables
                let tableSatu = `<table id="tableSatu" class="w-full text-black mb-4">
                <thead style="background-color: rgba(0,0,0,0.5);">
                <tr class="uppercase tracking-widest text-xs text-white">
                <th class="p-2 border-2 border-black w-3/6">Kinerja</th>
                <th class="p-2 border-2 border-black w-3/6">Total</th>
                </tr>
                </thead>
                <tbody>`;
                let tableDua = `<table id="tableDua" class="w-full text-black mb-4">
                <thead style="background-color: rgba(0,0,0,0.5);">
                    <tr class="uppercase tracking-widest text-xs text-white">
                        <th class="p-2 border-2 border-black w-3/6">Kinerja</th>
                        <th class="p-2 border-2 border-black w-3/6">Total</th>
                    </tr>
                </thead>
                <tbody>`;
                
                let l = 0;
                for (let aK in arrayKesimpulan){
                    let splitAk1 = arrayKesimpulan[aK];
                    let splitAk2 = [];
                    let splitAk3 = [];
                    let total = 0;
                    
                    splitAk1.split('|').forEach((e1,i) => {
                        let e2 = Number(e1) / Number(arraySkor[l]);
                        splitAk2.push(parseFloat(e2+0.1).toFixed(1));
                    });
    
                    splitAk2.shift();
                    splitAk2.forEach(e=>{
                        splitAk3.push(Number(e));
                    });
                    
                    total = splitAk3.reduce((a,b)=>{
                        return Number(a)*Number(b);
                    },1);
    
                    // create body row
                    tableSatu += `<tr class="uppercase tracking-widest text-xs">
                        <td class="p-2 border-2 border-black">P(X|${aK})</td>
                        <td class="p-2 border-2 border-black break-all">${total}</td>
                    </tr>`;
                    tableDua += `<tr class="uppercase tracking-widest text-xs">
                        <td class="final p-2 border-2 border-black" data-kriteria="${aK}" data-value="
                        ${total*arrayProb[l]}">
                            P(X|${aK}) X P(${aK})
                        </td>
                        <td class="p-2 border-2 border-black break-all">${total*arrayProb[l]}</td>
                    </tr>`;

                    ++l;
                }
    
                tableSatu += `</tbody></table>`;
                tableDua += `</tbody></table>`;
                $('#result-proccess2 #proccess2-wraper').html(tableSatu);
                $('#result-proccess2 #proccess2-wraper').append(tableDua);
                
                /* 
                PopUp kesimpulan
                */
                popUpKesimpulan(result['nik']);
    
            }
        })
        
    }
}

function popUpKesimpulan(nik){
    let status = '';
    let icon = '';
    let sum = 0;
    let zValue = '';
    let higherTr = '';

    $('#result-proccess2 #tableDua td.final').each(function(){
        if(Number($(this).data('value')) > sum){
            sum = Number($(this).data('value'));
            zValue = $(this).data('kriteria');
            higherTr = $(this).parent();
            $(this).parent().removeClass('bg-red-900'); 
        }
    })

    higherTr.addClass('bg-red-900');
    console.log(higherTr);

    if(zValue == 'Z5'){
        status = 'Sangat Baik';
        icon = 'sangatbaik';
    }
    else if(zValue == 'Z4'){
        status = 'Baik';
        icon = 'baik';
    }
    else if(zValue == 'Z3'){
        status = 'Cukup Baik';
        icon = 'cukupbaik';
    }
    else if(zValue == 'Z2'){
        status = 'Kurang';
        icon = 'kurang';
    }else{
        status = 'Sangat Kurang';
        icon = 'sangatkurang';
    }

    Swal.fire({
        html:`<div class="w-full mt-6 flex justify-center"><img src="${BASE_URL}asset/img/reaction/${icon}.svg" class="w-32"></div>
        <h1 class="mt-12">Pegawai Dengan NIK <strong>${nik}</strong>, kinerja-nya:</h1><h1 class='mt-2 mb-6 font-bold text-3xl'>${status}</h1>`,
        showCloseButton: true,
        showCancelButton: true,
        focusConfirm: false,
        confirmButtonText:
          'Great!',
        confirmButtonAriaLabel: 'Thumbs up, great!',
        cancelButtonText:
          'Nope',
        cancelButtonAriaLabel: 'Thumbs down'
    });
}