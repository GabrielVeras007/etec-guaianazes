
import { StatusBar, setStatusBarHidden } from 'expo-status-bar';
import { StyleSheet, Text, View, Modal, Button, Image, ScrollView, Pressable,} from 'react-native';
import React, { useState } from 'react';
import { useNavigation } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import AsyncStorage from '@react-native-async-storage/async-storage';


export default function App() {
  const navigation = useNavigation();

    const [ visivel, setVisivel] = useState (false);
    const [ posicao, setPosicao] = useState (0);
    const [horoscopo, setHoroscopo] = useState ([
    {imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://xamanismoflorescer.com.br/wp-content/uploads/2023/05/aguia-animal-de-poder.jpg"}}/>,
    nome: 'Águia', 
    características:'A águia é conhecida por sua imponência e habilidade de voar em grandes altitudes. Com uma visão extremamente aguçada, é capaz de enxergar suas presas a quilômetros de distância, tornando-a uma caçadora eficiente. Esses animais majestosos habitam montanhas, florestas e áreas abertas, sendo frequentemente associados a símbolos de poder e liberdade em diversas culturas.',
  },
    {imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://portalamazonia.com/wp-content/uploads/2022/03/b2ap3_large_Figura_1-1.jpg"}}/>,
    nome: 'Tucano',
    características:'O tucano é um pássaro tropical famoso por seu bico longo e colorido, que, apesar do tamanho, é surpreendentemente leve. Nativo das florestas da América do Sul, ele desempenha um papel essencial na dispersão de sementes, ajudando a regenerar a vegetação. Sociável e barulhento, o tucano é uma das aves mais emblemáticas da biodiversidade brasileira.',
  },
  {
    imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://static.biologianet.com/2020/05/mocego-voando.jpg"}}/>,
    nome: 'Morcego', 
    características:'O morcego é um mamífero único, sendo o único capaz de voar. Muitas espécies são fundamentais para a polinização e dispersão de sementes, enquanto outras controlam populações de insetos, desempenhando um papel vital nos ecossistemas. Apesar de sua má fama, é um animal extremamente adaptável e importante para o equilíbrio ambiental.',
  },
  {
    imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://static.wixstatic.com/media/3d88a1_0dd665209744456b8230b361b4e621fc~mv2.png/v1/fill/w_568,h_370,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/3d88a1_0dd665209744456b8230b361b4e621fc~mv2.png"}}/>,
    nome: 'Borboleta', 
    características:'A borboleta é um símbolo de transformação e beleza, passando por um ciclo de vida fascinante que inclui as fases de lagarta e crisálida. Esses insetos ajudam na polinização, contribuindo para a reprodução de plantas. Suas cores vibrantes e padrões únicos encantam observadores e refletem a diversidade da natureza.',
  },
  {
    imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://super.abril.com.br/wp-content/uploads/2019/11/pomba-sem-dedo.jpg"}}/>,
    nome: 'Pombo', 
    características:'O pombo é um dos animais mais adaptáveis do mundo, encontrado em áreas urbanas e rurais. Reconhecido por sua capacidade de orientação, foi amplamente utilizado como mensageiro na história. Embora às vezes subestimado, o pombo é um exemplo de resiliência e convivência com o ser humano, desempenhando um papel importante nos ecossistemas urbanos.',
  },
  
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
      <Text style={styles.textNome}>Águia</Text>
      <Image style={{width: 300 ,height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://xamanismoflorescer.com.br/wp-content/uploads/2023/05/aguia-animal-de-poder.jpg"}}/>
      </Pressable>

      <Text style={styles.textNome}>Tucano</Text>
      <Pressable style={styles.pressable} onPress={() => abrir(1)}>
      <Image style={{width: 300, height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://portalamazonia.com/wp-content/uploads/2022/03/b2ap3_large_Figura_1-1.jpg"}}/>
      </Pressable>

      <Text style={styles.textNome}>Morcego</Text>
      <Pressable style={styles.pressable} onPress={() => abrir(2)} >
      <Image style={{width: 300 ,height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://static.biologianet.com/2020/05/mocego-voando.jpg"}}/>
      </Pressable>
 
      <Text style={styles.textNome}>Borboleta</Text>
      <Pressable style={styles.pressable} onPress={() => abrir(3)} >
      <Image style={{width: 300 ,height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://static.wixstatic.com/media/3d88a1_0dd665209744456b8230b361b4e621fc~mv2.png/v1/fill/w_568,h_370,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/3d88a1_0dd665209744456b8230b361b4e621fc~mv2.png"}}/>
      </Pressable>

      <Text style={styles.textNome}>Pombo</Text>
      <Pressable style={styles.pressable} onPress={() => abrir(4)} >
      <Image style={{width: 300 ,height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://super.abril.com.br/wp-content/uploads/2019/11/pomba-sem-dedo.jpg"}}/>
      </Pressable>
      </ScrollView>
      

      <Modal visible={visivel} animationType="fade">
        <View style={styles.modal}>
          {setPosicao!==null&&(<>
          <Text>{horoscopo[posicao].imagem}</Text>
          <Text style={styles.textNome}>{horoscopo[posicao].nome}</Text>
          <Text style={styles.textModal}>{horoscopo[posicao].características}</Text>
          <Animatable.View animation="tada" delay={400}>
            <Pressable style={styles.botao} onPress={() => voltar()}>
              <Text style={styles.texto}>Voltar</Text>
            </Pressable>
          </Animatable.View>
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
    backgroundColor: '#039A00',
    alignItems: 'center',
    justifyContent: 'center',
    paddingTop: 60,
  },
  modal :{
    flex: 1,
    backgroundColor: '#039A00',
    alignItems: 'center',
    justifyContent: 'center',
  },
  pressable: {
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 10,

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
    marginTop:40,
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: 10,
    paddingHorizontal: 25,
    borderRadius: 20,
    elevation: 3,
    backgroundColor: '#135D14',
  },
  texto: {
    fontSize: 16,
    lineHeight: 21,
    fontWeight: 'bold',
    letterSpacing: 0.25,
    color: 'white',
  }
});