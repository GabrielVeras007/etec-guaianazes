<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Calculadora de IMC</title>
</head>

<body>
    <?php
    echo "<header>";

    echo  "<section>";

    echo   "<nav>";
    echo      "<div class='itens_nav'>";
    echo           "<div class='titulo'><img src='logo.png' alt=''></div>";
    echo           "<div class='links_nav'>";
    echo               "<a href=''>HOME</a>";
    echo               "<a href=''>CADASTRE-SE</a>";
    echo               "<a href=''>CALCULADORA</a>";
    echo           "</div>";
    echo     "</div>";
    echo   "</nav>";

    echo      "<article>";

    echo          "<div class='bloco1'>";
    echo           "<div class='caixa_texto'>";
    echo           "<div class='titulo_imc'>Calcule o IMC</div><br>";

    echo           "<h4>IMC é a sigla para Índice de Massa Corpórea, parâmetro adotado pela Organização Mundial de Saúde para calcular o peso ideal de cada pessoa.<br><br>";
    echo            "O índice é calculado da seguinte maneira: divide-se o peso do paciente pela sua altura elevada ao quadrado. Diz-se que o indivíduo tem peso normal quando o resultado do IMC está entre 18,5 e 24,9.<br><br>";

    echo             "Quer descobrir seu IMC? Insira seu peso e sua altura nos campos abaixo e compare com os índices da tabela. Importante: siga os exemplos e use pontos como separadores.</h4></div>";

    echo              "<img src='imagem1.jpg' alt=''>";
    echo      "</article></div><br>";

    echo      "<article><div class='bloco2'>";
    echo      "<div class='calculo'>";
    echo            "<div class='calculos'>";
    echo               "<h1>Altura</h1>";
    echo               "<input type='text' id='numero1' nome='numero1' requiredplaceholder='METROS'><br><br>";
    echo               "<button class='botao1'>Calcular</button>";
    echo          "</div>";

    echo            "<div class='calculos'>";
    echo               "<h1>Peso</h1>";
    echo               "<input type='text' id='numero2' nome='numero2' requiredplaceholder='ALTURA'><br><br>";
    echo               "<button class='botao2'>Limpar</button>";
    echo           "</div>";
    echo      "</div><br><br><br>";

    echo      "<div class='tabela'>";

    echo          "<h2>Interpretação do IMC</h2><br><br>";

    echo          "<div class='subtitulo_imc'>";

    echo               "<h3><div class='subtitulo1'> IMC</div></h3>";
    echo              "<h3><div class='subtitulo2' id='sub2'> CLASSIFICAÇÃO</div></h3>";
    echo              "<h3><div class='subtitulo3' id='sub3'> OBESIDADE (GRAU)</div></h3>";

    echo          "</div>";

    echo          "<div class='informacoes_tabela'>";

    echo          "<div class='informacoes' id='i1'>";
    echo               "<h3>MENOR QUE 18,5</h3><br>";
    echo               "<h3>ENTRE 18,5 % 24,9</h3><br>";
    echo               "<h3>ENTRE 25,0 E 24,9</h3><br>";
    echo               "<h3>ENTRE 30,0 E 39,9</h3><br>";
    echo              "<h3>MAIOR QUE 40,0</h3>";
    echo           "</div>";

    echo           "<div class='informacoes' id='i2'>";
    echo              "<h3>MAGREZA</h3><br><br>";
    echo               "<h3>NORMAL</h3><br><br>";
    echo               "<h3>SOBREPESO</h3><br><br>";
    echo               "<h3>OBESIDADE</h3><br><br>";
    echo               "<h3>OBESIDADE GRAVE</h3>";
    echo          "</div>";

    echo         "<div class='informacoes' id='i3'>";
    echo              "<h3>0</h3><br><br>";
    echo              "<h3>0</h3><br><br>";
    echo             "<h3>|</h3><br><br>";
    echo              "<h3>||</h3><br><br><br>";
    echo             "<h3>|||</h3>";
    echo          "</div>";

    echo      "</div><br><br>";

    $altura = 2;
    $peso = 00;

    $imc = $peso / ($altura * $altura);

    echo "<h2 > O seu IMC é de</h2 >";

    if ($imc < 18.5) {
        echo     "<div class='calculos' id='if'>";
        echo         "<button class='botao2'>$imc</button>";
        echo "<h2 class='classificacao' id='else'>Classificação: MAGREZA!!!</h2 >";
        echo    "</div>";
    } else if ($imc < 24.9) {
        echo     "<div class='calculos' id='if'>";
        echo         "<button class='botao2'>$imc</button>";
        echo "<h2 class='classificacao' id='else'>Classificação: NORMAL</h2 >";
        echo    "</div>";
    } else if ($imc < 29.9) {
        echo     "<div class='calculos' id='if'>";
        echo         "<button class='botao2'>$imc</button>";
        echo "<h2 class='classificacao' id='else'>Classificação: SOBREPESO!</h2 >";
        echo    "</div>";
    } else if ($imc < 39.9) {
        echo     "<div class='calculos' id='if'>";
        echo         "<button class='botao2'>$imc</button>";
        echo "<h2 class='classificacao' id='else'>Classificação: OBESIDADE!!</h2 >";
        echo    "</div>";
    } else {
        echo     "<div class='calculos' id='if'>";
        echo         "<button class='botao2'>$imc</button>";
        echo "<h2 class='classificacao' id='else'>Classificação: OBESIDADE GRAVE!!!</h2 >";
        echo    "</div>";
    }


    echo "</div>";
    echo "</div>";
    echo "</article>";

    echo "<img src='imagem2.jpg' class='imagem2' alt=''>";


    echo "</section>";

    echo  "<footer>";
    echo     "<h1>@Todos os direitos reservados a ETEC</h1>";
    echo "</footer>";


    echo "</header>";


    ?>

</body>

</html>