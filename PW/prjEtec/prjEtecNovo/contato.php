<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cssIndex/contato.css">
    <title>Document</title>
</head>
<body>

    <?php include('navbar/nav.php') ?>

    <header>

        <main>

            <h2>Formulário de contato</h2>
            <br><br>
            
            <form action="salvar-contato.php" method="post">
    
        <div class="input-group1">
            <input required="" name="txNome" class="input1">
            <label class="user-label1">
                Nome Completo
            </label>
        </div>

        <br><br>

        <div class="input-group2">
            <input required="" name="txEmail" class="input2">
            <label class="user-label2">
                Endereço de Email
            </label>
        </div>

        <br><br>

        <div class="input-group2">
            <input required="" name="txTelefone" class="input2">
            <label class="user-label2">
                Número de Telefone
            </label>
        </div>
        <br><br>

        <div class="input-group2">
            <input required="" name="txCidade" class="input2">
            <label class="user-label2">
                Cidade
            </label>
        </div>

        <br><br>

        <div class="select3-group3">
        
        <div class="input-group2">
            <input required="" name="txAssunto" class="input2">
            <label class="user-label2">
                Assunto
            </label>
        </div>
    </div>
    
    <br><br>

    <label id="txData" for="">Data de Nascimento</label>
        <input id="data" type="date" name="txData">

        <br><br><br><br>

       <div class="msg">

       <label id="txMsg" for="" class="user-label4">
           Mensagem
        </label><br>
        <textarea name="txMensagem"></textarea>
        </div>
        <br><br>



        
        <div class="bt">
            </div>

            <input class="bt_botao" type="submit" value="Enviar" />
       </form>


        </main>


    </header>
</body>
</html>