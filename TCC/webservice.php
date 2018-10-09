<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: text/html; charset=utf-8");

$conexao = mysqli_connect("localhost","root","","cmvsamu") or die("Não foi possivel a conexão com o banco de dados");
mysqli_query($conexao,"SET NAMES 'utf8'");
mysqli_query($conexao,'SET character_set_connection=utf8');
mysqli_query($conexao,'SET character_set_client=utf8');
mysqli_query($conexao,'SET character_set_results=utf8');

$tipo = $_POST["tipo"];

		if($tipo == "listakm"){
			$id = $_POST['id'];
			$consultar = mysqli_query($conexao,"select * from trocas where IdVeiculo = $id ");	
			$dados = mysqli_fetch_assoc($consultar);		
			$json = json_encode($dados, JSON_UNESCAPED_UNICODE);
			echo $json;		
		}
		else if($tipo == "listamb"){
			$consulta = mysqli_query($conexao,"select * from veiculos");	
			$lista = array();
			//colocando os valores em um vetor 
			while($linha = mysqli_fetch_assoc($consulta)){				
				$lista[] = array_map("utf8_encode",$linha);
			}
			//mandando a consulta para requisicao				
			$json = json_encode($lista);
			echo $json;		
		}
		else if($tipo == "atualizarkm"){	
  			$km = $_POST['km'];
  			$id = $_POST['id'];
  		
			$sql="UPDATE trocas SET KmAtual = KmAtual + $km WHERE IdVeiculo = $id";
			$dados = mysqli_query($conexao, $sql);
		}
		else if($tipo == "consultapeca"){
			$id = $_POST["id"];	
			$sql=mysqli_query($conexao,"SELECT p.NomePeca, v.NomeVeiculo, t.* FROM pecas as p INNER JOIN veiculos as v INNER JOIN trocas as t on (p.IdPeca = t.IdPeca and t.IdVeiculo = $id AND v.IdVeiculo = $id) ");
			$lista = array();
			//colocando os valores em um vetor 
			while($linha = mysqli_fetch_assoc($sql)){				
				$lista[] = array_map("utf8_encode",$linha);
			}
			//mandando a consulta para requisicao				
			$json = json_encode($lista);
			echo $json;

		}

?>