function imc() {
    var numero1 = parseFloat(document.getElementById("numero1").value);
    var numero2 = parseFloat(document.getElementById("numero2").value);
    
    if(isNaN(numero1) || isNaN(numero2)) {
        alert("Por favor, insira números válidos");
    }else {
        numero1 + numero2;

        alert("A soma é: " + resultado);
    }

}