<?php
$pdo = new PDO('mysql:host=localhost;dbname=ramais', 'root','root');



$dados = $_POST['inputDadosRamal'];
$codAeroporto = $_POST['codAeroporto'];


// $sql = "SELECT R.id, A.cod, A.cidade, A.uf, R.setor, R.nome, R.numero_ramal FROM `ramais` AS R
// INNER JOIN `aeroportos` as A
// ON (R.fk_aeroporto = A.id)";


$sql = "SELECT R.id, A.cod, A.cidade, A.uf, R.setor, R.nome, R.numero_ramal FROM `ramais` AS R
INNER JOIN `aeroportos` as A
ON (R.fk_aeroporto = A.id)
WHERE (A.cod = '$codAeroporto') AND (A.cidade LIKE '%$dados%' OR R.setor LIKE '%$dados%' OR R.nome LIKE '%$dados%')";

$stmt = $pdo->prepare($sql);
// $stmt->bindValue('', '');
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$qtsEncontrados = count($result);

if(!empty($result)){
    $msg = array('sucesso', "Achei $qtsEncontrados ;)", $result);
    echo(json_encode($msg, true));
}else{
    $msg = array('erro', 'Não Encontrei. Verifique os paramentros de busca :(', $result);
    echo(json_encode($msg, true));
}
