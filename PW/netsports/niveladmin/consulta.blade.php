<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta</title>
</head>
<body>
    
    <h2>Consulta:tbEstoqueProduto</h2>
    @foreach($produto as $p)
        <p> ID: {{$p->id}} </p>
        <p> Nome: {{$p->nomeEstoqueProduto}} </p>
        <p> Valor: R${{$p->valorEstoqueProduto}} </p>
        <p> Fornecedor: {{$p->fornecedorEstoqueProduto}} </p>
        <p> Quantidade: {{$p->QuantidadeEstoqueProduto}} </p>
        <p> Descrição: {{$p->descricaoEstoqueProduto}} </p>
    @endforeach



</body>
</html>