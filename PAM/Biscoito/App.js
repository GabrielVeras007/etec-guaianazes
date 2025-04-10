import React, { useState } from 'react';
import { StyleSheet, Text, View, Image, TouchableOpacity } from 'react-native';

function App() {
  // frase que está na tela
  const [impressao, setImpressao] = useState("");

  // número da imagem que está na tela
  const [img, setImg] = useState(0);

  const frases = [
    'Torça para o Corinthians.',
    'Use Bootstrap.',
    'Faça mais o Siuuuuuuu.',
    'Você será pego de surpresa por uma gravidez indesejada.',
    'Amanhã é um novo dia(ou será que não?).',
    'Espalhe a palavra de Messi>CR7.',
    'Hoje coisas grandes te aguardam.',
  ];

  function quebrar() {
    if (img === 0) {
      let numAleatorio = Math.floor(Math.random() * frases.length);
      setImpressao(frases[numAleatorio]);
      setImg(1);
    }
  }

  function novo() {
    setImpressao('');
    setImg(0);
  }

  function exibirimagem(numero) {
    if (numero === 0) {
      return (<Image source={require('./assets/pokeball.png')} style={styles.img} />);
    } else {
      return (<Image source={require('./assets/pokeballaberta.png')} style={styles.img} />);
    }
  }

  return (
    <View style={styles.container}>

      <View style={{ borderWidth: 1, flex: 1, justifyContent: 'center', width: '100%', alignItems: 'center' }}>
        {exibirimagem(img)}
      </View>

      <View style={{ borderWidth: 1, flex: 1, justifyContent: 'center', width: '100%', alignItems: 'center', backgroundColor:'#3779EB' }}>
        <Text style={styles.textoFrase}>{impressao}</Text>
      </View>

      <View style={{ borderWidth: 1, flex: 1, justifyContent: 'center', width: '100%', alignItems: 'center' }}>
        <TouchableOpacity style={styles.botao} onPress={quebrar}>
          <View style={styles.btnArea}>
            <Text style={styles.btnTexto}>Abrir Pokébola</Text>
          </View>
        </TouchableOpacity>
        <TouchableOpacity style={styles.botao} onPress={novo}>
          <View style={styles.btnArea}>
            <Text style={styles.btnTexto}>Nova Pokébola</Text>
          </View>
        </TouchableOpacity>
      </View>

    </View>
  );
}

export default App;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#2770E8',
  },
  img: {
    height: 250,
    width: 250,
  },
  textoFrase: {
    fontSize: 30,
    color: 'black',
    margin: 30,
    fontStyle: 'italic',
    textAlign: 'center',
  },
  botao: {
    width: 230,
    height: 50,
    borderWidth: 4,
    borderColor: 'black',
    borderRadius: 25,
    margin: 10,
  },
  btnArea: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  btnTexto: {
    color: 'black',
    fontSize: 18,
    fontWeight: 'bold',
  }
});
