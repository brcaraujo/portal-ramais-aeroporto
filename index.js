let formSeach = document.getElementById('SeachInput');
let boxRenderLista = document.getElementById('renderLista');
let eltotalEncontrado = document.getElementById('totalEncontrado');

let select = document.getElementById('codAeroporto');
select.addEventListener('change', ()=>{
    buscarRamal();
});
formSeach.addEventListener('submit', (e)=>{
    e.preventDefault();
});

formSeach.addEventListener('keyup', (e)=>{
    if(e.which == 13){
        let audio = new Audio('./key.mp3');
        audio.play();
    }
    buscarRamal();
});


function buscarRamal(){
    let formData = new FormData(formSeach);
    let ajax = new XMLHttpRequest();

    ajax.open('POST', './get-dados-ramal.php');
    ajax.onreadystatechange = ()=>{
        if (ajax.readyState == 4 && ajax.status == 200){
            let resposta = JSON.parse(ajax.response);
                if(resposta[0] =="erro"){
                    boxRenderLista.innerHTML = `<p><i class="fi fi-bs-exclamation"></i> ${resposta[1]}</p>`;
                    eltotalEncontrado.innerText = resposta[1];
                    return;
                }
            boxRenderLista.innerHTML="";
            resposta[2].forEach((key)=> {
                boxRenderLista.appendChild(templateRowRamal(key));
                eltotalEncontrado.innerText = resposta[1];
            });

            // boxRenderLista.innerHTML=`
            //     <tr class="TR-hOVER">
            //         <td>PMW</td>
            //         <td>PALMAS-GO</td>
            //         <td>INFORMATICA</td>
            //         <td>BRUNO CARVALHO ARAUJO</td>
            //         <td>63 3213-8805</td>
            //     </tr>
            // `;
        }else{
            eltotalEncontrado.innerHTML = '<p style="color: red;">(ERRO 404) Verique sua Conexão ou acione o T.I ! </p>';
        }
    }
    ajax.send(formData);
}


function templateRowRamal(key){
    let container = document.createElement('tr');
    container.setAttribute('class', 'TR-hOVER');
    let template = `
        <tr>
            <td>${key.cod}</td>
            <td>${key.cidade+'-'+key.uf}</td>
            <td>${key.setor}</td>
            <td title="${key.numero_ramal}">${key.nome}</td>
            <td title="${key.nome}">${key.numero_ramal}</td>
        </tr>
         `;
    container.innerHTML = template;
    return container;
}














