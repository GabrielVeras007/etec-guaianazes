import React, { useState } from 'react';
import { StyleSheet, Text, View, Image, Pressable } from 'react-native';

export default function App() {
  const [pontosJogador, setPontosJogador] = useState(0);
  const [pontosMaquina, setPontosMaquina] = useState(0);
  const [imgJogador, setImgJogador] = useState(0);
  const [imgMaquina, setImgMaquina] = useState(0);
  const [ganhador, setGanhador] = useState('');
  
  function exibirImagem(valor) {
    if (valor === 1) {
      return <Image source={require('./assets/rock.png')} style={styles.imgs} />;
    } else if (valor === 2) {
      return <Image source={require('./assets/scissors.png')} style={styles.imgs} />;
    } else if (valor === 3) {
      return <Image source={require('./assets/papai.png')} style={styles.imgs} />;
    } else {
      return <Image source={require('./assets/box.png')} style={styles.imgs} />;
    }
  }

  function jogar(valorJogador) {
    let valorMaquina = Math.floor(Math.random() * 3) + 1;

    setImgJogador(valorJogador);
    setImgMaquina(valorMaquina);
  
    if (
      (valorJogador === 1 && valorMaquina === 3) ||
      (valorJogador === 2 && valorMaquina === 1) ||
      (valorJogador === 3 && valorMaquina === 2)
    ) {
      setPontosMaquina(pontosMaquina + 1);
      setGanhador('Maquina');
    } else if (
      (valorMaquina === 1 && valorJogador === 3) ||
      (valorMaquina === 2 && valorJogador === 1) ||
      (valorMaquina === 3 && valorJogador === 2)
    ) {
      setPontosJogador(pontosJogador + 1);
      setGanhador('Jogador');
    } else {
      setGanhador('Empate');
    }
  }
  function novo() {
    setPontosJogador(0);
    setPontosMaquina(0);
    setImgJogador(0);
    setImgMaquina(0);
    setGanhador('');
  }

  return (
    <View style={styles.container}>
      <View style={{ flex: 1, justifyContent: 'center', width: '100%', alignItems: 'center' }}>
        <Image source={require('./assets/pokeball.png')} style={styles.img} />
      </View>

      <View style={{ flex: 1, justifyContent: 'end', width: '100%', alignItems: 'center' }}>
        <Text style={styles.placarEpontos}>Placar</Text>
      </View>

      <View style={{ flex: 1, justifyContent: 'space-around', width: '100%', alignItems: 'center' }}>
        <Text style={styles.placarEpontos}>Último ganhador:</Text>
        <Text style={styles.placarEpontos}>{ganhador}</Text>
        <Text style={styles.placarEpontos}>Jogador: {pontosJogador} Máquina: {pontosMaquina}</Text>
      </View>

      <View style={{ flex: 1, justifyContent: 'center', width: '100%', alignItems: 'center' }}>
        <View style={styles.images}>
          {exibirImagem(imgJogador)}
          <Image source={require('./assets/vs.png')} style={styles.imgs} />
          {exibirImagem(imgMaquina)}
        </View>
      </View>

      <View style={{ flex: 1, justifyContent: 'center', width: '100%', alignItems: 'center' }}>
        <Pressable style={styles.botao} onPress={novo}>
          <Text>Nova Partida</Text>
        </Pressable>
      </View>

      <View style={{ flex: 1, justifyContent: 'center', width: '100%', alignItems: 'center' }}>
        <View style={styles.images}>
          <Pressable onPress={() => jogar(1)}>
            <Image source={require('./assets/rock.png')} style={styles.imgs} />
          </Pressable>
          <Pressable onPress={() => jogar(2)}>
            <Image source={require('./assets/scissors.png')} style={styles.imgs} />
          </Pressable>
          <Pressable onPress={() => jogar(3)}>
            <Image source={require('./assets/papai.png')} style={styles.imgs} />
          </Pressable>
        </View>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 50,
  },
  img: {
    height: 250,
    width: 500,
  },
  imgs: {
    height: 100,
    width: 100,
  },
  images: {
    flexDirection: 'row',
  },
  placarEpontos: {
    fontSize: 30,
    marginBottom: 10,
  },
  botao: {
    backgroundColor: 'transparent',
    width: 200,
    height: 50,
    alignItems: 'center',
    justifyContent: 'center',
    borderWidth: 3,
    borderRadius: 10,
  },
});