import { StatusBar, setStatusBarHidden } from 'expo-status-bar';
import { StyleSheet, Text, View, Modal, Button, Image, ScrollView, Pressable,} from 'react-native';
import React, { useState } from 'react';
import { ImageBackground } from 'react-native-web';


export default function App() {
    const [ visivel, setVisivel] = useState (false);
    const [ posicao, setPosicao] = useState (0);
    const [horoscopo, setHoroscopo] = useState ([
    {imagem: <Image style={{width: 250 ,height: 250}} source={{uri: "https://www.imagensempng.com.br/wp-content/uploads/2022/02/34324.png"}}/>,
    nome: 'Sol', 
    diametro: 'Diâmetro: Cerca de 1.39 milhões de quilômetros', 
    massa: 'Massa: Aproximadamente 1.989 x 10^30 kg', 
    composicao: 'Composicao: Principalmente hidrogênio (aproximadamente 74%) e hélio (cerca de 24%), com traços de elementos mais pesados',
    temperaturadasuperficie: 'Temperatura da Superfície: Aproximadamente 5.500 °C',
    idade: 'Idade: Aproximadamente 4.6 bilhões de anos',
  },
    {imagem: <Image style={{width: 200 ,height: 200,}} source={{uri: "https://static.vecteezy.com/system/resources/previews/020/922/020/original/isolated-realistic-mercury-illustration-png.png"}}/>,
    nome: 'Mercúrio',
    diametro: 'Diâmetro: Cerca de 4.880 km',
    massa: 'Massa: Aproximadamente 3.3 x 10^23 kg',
    distanciadosol: 'Distância do Sol: Aproximadamente 57.9 milhões de km (0.39 UA)', 
    periodoorbital: 'Perío do Orbital: Cerca de 88 dias terrestres', 
    temperaturadasuperficie: 'Temperatura da Superfície: Entre -173 °C e 427 °C'
  },
  {
    imagem: <Image style={{width: 200 ,height: 200}} source={{uri: "https://upload.wikimedia.org/wikipedia/commons/9/93/Venus_globe_-_transparent_background.png"}}/>,
    nome: 'Vênus', 
    diametro: 'Diâmetro: Cerca de 12.104 km',
    massa: 'Massa: Aproximadamente 4.87 x 10^24 kg',
    distanciadosol: 'Distância do Sol: Aproximadamente 108.2 milhões de km (0.72 UA)', 
    periodoorbital: 'Perío do Orbital: Cerca de 225 dias terrestres', 
    temperaturadasuperficie: 'Temperatura da Superfície: Média de 462 °C'
  },
  {
    imagem: <Image style={{width: 200 ,height: 200}} source={{uri: "https://cdn.pixabay.com/photo/2016/04/24/04/53/globe-1348777_640.png"}}/>,
    nome: 'Terra', 
    diametro: 'Diâmetro: Cerca de 12.742 km',
    massa: 'Massa: Aproximadamente 5.97 x 10^24 kg',
    distanciadosol: 'Distância do Sol: Aproximadamente 149.6 milhões de km (1 UA)', 
    periodoorbital: 'Perío do Orbital: 365.25 dias', 
    temperaturadasuperficie: 'Temperatura da Superfície: Média de 15 °C'
  },
  {
    imagem: <Image style={{width: 200 ,height: 200}} source={{uri: "https://static.vecteezy.com/system/resources/previews/020/922/027/original/isolated-realistic-mars-illustration-png.png"}}/>,
    nome: 'Marte', 
    diametro: 'Diâmetro: Cerca de 6.779 km',
    massa: 'Massa: Aproximadamente 6.42 x 10^23 kg',
    distanciadosol: 'Distância do Sol: Aproximadamente 227.9 milhões de km (1.52 UA)', 
    periodoorbital: 'Perío do Orbital: Cerca de 687 dias terrestres', 
    temperaturadasuperficie: 'Temperatura da Superfície: Entre -87 °C e -5 °C'
  },
  {
    imagem: <Image style={{width: 200 ,height: 200}} source={{uri: "https://static.vecteezy.com/system/resources/previews/027/294/102/original/jupiter-planet-isolated-on-transparent-background-cutout-free-png.png"}}/>,
    nome: 'Júpiter', 
    diametro: 'Diâmetro: Cerca de 139.820 km',
    massa: 'Massa: Aproximadamente 1.9 x 10^27 kg',
    distanciadosol: 'Distância do Sol: Aproximadamente 778.5 milhões de km (5.2 UA)', 
    periodoorbital: 'Perío do Orbital: Cerca de 12 anos terrestres', 
    temperaturadasuperficie: 'Temperatura da Superfície: Média de -108 °C'
  },
  {
    imagem: <Image style={{width: 200 ,height: 200}} source={{uri: "https://png.pngtree.com/png-vector/20240309/ourmid/pngtree-beautiful-planet-saturn-png-image_11898581.png"}}/>,
    nome: 'Saturno', 
    diametro: 'Diâmetro: Cerca de 116.460 km',
    massa: 'Massa: Aproximadamente 5.68 x 10^26 kg',
    distanciadosol: 'Distância do Sol: Aproximadamente 1.43 bilhões de km (9.5 UA)', 
    periodoorbital: 'Perío do Orbital: Cerca de 29 anos terrestres', 
    temperaturadasuperficie: 'Temperatura da Superfície: Média de -139 °C'
  },
  {
    imagem: <Image style={{width: 200 ,height: 200}} source={{uri: "https://static.vecteezy.com/system/resources/previews/011/178/729/original/uranus-elements-of-this-image-furnished-by-nasa-free-png.png"}}/>,
    nome: 'Urano', 
    diametro: 'Diâmetro: Cerca de 50.724 km',
    massa: 'Massa: Aproximadamente 8.68 x 10^25 kg',
    distanciadosol: 'Distância do Sol: Aproximadamente 2.87 bilhões de km (19.2 UA)', 
    periodoorbital: 'Perío do Orbital: Cerca de 84 anos terrestres', 
    temperaturadasuperficie: 'Temperatura da Superfície: Média de -197 °C'
  },
  {
    imagem: <Image style={{width: 200 ,height: 200,}} source={{uri: "https://images.freeimages.com/vme/images/3/0/301841/neptune_preview"}}/>,
    nome: 'Netuno', 
    diametro: 'Diâmetro: Cerca de 49.244 km',
    massa: 'Massa: Aproximadamente 1.02 x 10^26 kg',
    distanciadosol: 'Distância do Sol: Aproximadamente 4.5 bilhões de km (30.1 UA)', 
    periodoorbital: 'Perío do Orbital: Cerca de 165 anos terrestres', 
    temperaturadasuperficie: 'Temperatura da Superfície: Média de -201 °C'
  }
  ]);

 

 const voltar = () => {
  setVisivel(false)
}
const abrir = (index) => {
  setVisivel(true)
  setPosicao(index)
}

  return (
    <View style={styles.container}>

      <ScrollView style={styles.scrollView}>

      <Pressable style={styles.pressable} onPress={() => abrir(0)} >
      <Image style={{width: 400 ,height: 400}} source={{uri: "https://www.imagensempng.com.br/wp-content/uploads/2022/02/34324.png"}}/>
      </Pressable>

      <Pressable style={styles.pressable} onPress={() => abrir(1)}>
      <Image style={{width: 50, height: 50}} source={{uri: "https://static.vecteezy.com/system/resources/thumbnails/020/922/020/small/isolated-realistic-mercury-illustration-png.png"}}/>
      </Pressable>

      <Pressable style={styles.pressable} onPress={() => abrir(2)} >
      <Image style={{width: 100 ,height: 100}} source={{uri: "https://upload.wikimedia.org/wikipedia/commons/9/93/Venus_globe_-_transparent_background.png"}}/>
      </Pressable>

      <Pressable style={styles.pressable} onPress={() => abrir(3)} >
      <Image style={{width: 90 ,height: 90}} source={{uri: "https://cdn.pixabay.com/photo/2016/04/24/04/53/globe-1348777_640.png"}}/>
      </Pressable>

      <Pressable style={styles.pressable} onPress={() => abrir(4)} >
      <Image style={{width: 90 ,height: 90}} source={{uri: "https://static.vecteezy.com/system/resources/previews/020/922/027/original/isolated-realistic-mars-illustration-png.png"}}/>
      </Pressable>

      <Pressable style={styles.pressable} onPress={() => abrir(5)} >
      <Image style={{width: 150 ,height: 150}} source={{uri: "https://static.vecteezy.com/system/resources/previews/027/294/102/original/jupiter-planet-isolated-on-transparent-background-cutout-free-png.png"}}/>
      </Pressable>

      <Pressable style={styles.pressable} onPress={() => abrir(6)} >
      <Image style={{width: 150 ,height: 150}} source={{uri: "https://png.pngtree.com/png-vector/20240309/ourmid/pngtree-beautiful-planet-saturn-png-image_11898581.png"}}/>
      </Pressable>

      <Pressable style={styles.pressable} onPress={() => abrir(7)} >
      <Image style={{width: 100 ,height: 100}} source={{uri: "https://static.vecteezy.com/system/resources/previews/011/178/729/original/uranus-elements-of-this-image-furnished-by-nasa-free-png.png"}}/>
      </Pressable>

      <Pressable style={styles.pressable} onPress={() => abrir(8)} >
      <Image style={{width: 100 ,height: 100}} source={{uri: "https://images.freeimages.com/vme/images/3/0/301841/neptune_preview"}}/>
      </Pressable>
      </ScrollView>
      

      <Modal visible={visivel} animationType="fade">
        <View style={styles.modal}>
          {setPosicao!==null&&(<>
          <Text>{horoscopo[posicao].imagem}</Text>
          <Text style={styles.textNome}>{horoscopo[posicao].nome}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].tipodeestrela}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].diametro}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].massa}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].composicao}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].temperaturadasuperficie}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].temperaturadonucleo}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].idade}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].distanciadaterra}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].distanciadosol}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].periodoorbital}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].temperaturadasuperficie}</Text>

          <Button style={styles.botao} title="Voltar" onPress={() => voltar()}/>
                    </>
          )}
        </View>
      </Modal>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'black',
    alignItems: 'center',
    justifyContent: 'center',
  },
  modal :{
    flex: 1,
    backgroundColor: 'black',
    alignItems: 'center',
    justifyContent: 'center',
  },
  pressable: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  textModal: {
    color: 'white',
    fontSize: 20,
    textAlign: 'center',
  },
  textNome: {
    fontWeight: '500',
    color: 'white',  
    fontSize: 20,
    textAlign: 'center',
  },
  botao: {
    Color: 'red',
  }
});
