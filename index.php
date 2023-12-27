<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Ramais</title>
    <link rel="stylesheet" href="./index.css">
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-straight/css/uicons-bold-straight.css'>
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-rounded/css/uicons-bold-rounded.css'>
</head>
<body>
    <div class="ilustracao">
        <img src="./ilustracao.png" alt="">
        <p>Lista de ramais</p>
        <p>By: Bruno Araújo ( IOS PMW )</p>
    </div>
    
    <div class="box_principal">

        <div class="box_header">
            <img src="./logo lista de ramais.png" alt="">
        </div>

        <div class="box_seach">
            <form action="" id="SeachInput">
                <select name="codAeroporto" id="codAeroporto">
                    <option value="SEDE"> SEDE</option>
                    <option value="PMW"> Palmas-TO</option>
                    <option value="GYN"> Goiania-GO</option>
                </select>
                <input type="text" placeholder="Ex.: T.I" name="inputDadosRamal">
                <button type="submit"><i class="fi fi-bs-search"></i> Buscar</button>
            </form>
        </div>

        <div class="box_lista_de_ramais">
            
            <table>
                <thead>
                    <tr style="font-size: 12px; font-weight: bold;">
                        <td><i class="fi fi-br-ticket"></i> COD.:</td>
                        <td><i class="fi fi-br-marker"></i> CIDADE:</td>
                        <td><i class="fi fi-bs-briefcase"></i> SETOR:</td>
                        <td><i class="fi fi-br-portrait"></i> NOME:</td>
                        <td><i class="fi fi-bs-tty"></i> RAMAL</td>
                    </tr>
                </thead>

                <tbody id="renderLista">
                    <!-- <tr class="TR-hOVER">
                        <td>PMW</td>
                        <td>PALMAS-TO</td>
                        <td>INFORMATICA</td>
                        <td>BRUNO CARVALHO ARAUJO</td>
                        <td>63 3213-0005</td>
                    </tr> -->
                </tbody>
            </table>

        </div>

        <div class="box_footer">
            <p id="totalEncontrado"></p>
        </div>
    </div>
    <script src="./index.js"></script>
</body>
</html>