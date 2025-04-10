
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
    {imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR7JxtnB290OhJRoVtLm-OsJjVhEXKkcVwa8u7rZCc7Pd2q5wwM"}}/>,
    nome: 'Leão', 
    características:'O leão (Panthera leo) é um grande felino conhecido por sua força e majestade, frequentemente chamado de "rei da selva". Ele possui um corpo musculoso, uma pelagem curta de cor amarelada e os machos adultos têm uma juba imponente que varia de marrom claro a preto, servindo como símbolo de poder. Esses animais vivem em grupos sociais chamados de "bandos", liderados por um macho dominante, enquanto as fêmeas são responsáveis pela maior parte da caça. Os leões são predadores ágeis, com dentes e garras afiadas, e são encontrados principalmente em savanas e planícies da África.',
  },
    {imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://naturezaanimal.com.br/wp-content/uploads/2022/08/elefante-africano.webp"}}/>,
    nome: 'Elefante',
    características:'O elefante é o maior mamífero terrestre do mundo, conhecido por seu porte imponente e comportamento social complexo. Existem três espécies principais: o elefante-africano-da-savanna, o elefante-africano-da-floresta e o elefante-asiático. Eles possuem corpos robustos, uma pele grossa e rugosa de cor cinza, e uma tromba longa, que é uma fusão do nariz e do lábio superior, usada para pegar objetos, beber água e emitir sons.Suas presas, feitas de marfim, são usadas para escavar, mover objetos e se defender. Elefantes são animais altamente sociais, vivendo em grupos familiares liderados por fêmeas. Eles são herbívoros. Além disso, são conhecidos por sua inteligência, memória excepcional e comportamento cooperativo.',
  },
  {
    imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1O6J2RXGsVcgzCUBvMJ5VyRvd1y77ZvSoA&s"}}/>,
    nome: 'Urso', 
    características:'O urso é um grande mamífero carnívoro que pertence à família Ursidae. Existem várias espécies de ursos, como o urso-pardo, o urso-negro e o urso-polar, cada uma com características específicas. De modo geral, os ursos possuem corpos robustos, com pernas fortes, garras afiadas e uma pelagem densa que varia em cor, do branco ao preto, passando por tons marrons.Embora muitos sejam carnívoros, a dieta dos ursos pode ser bastante variada, incluindo peixes, pequenos mamíferos, frutas, mel e até insetos, sendo que algumas espécies, como o panda gigante, se alimentam quase exclusivamente de bambu. Eles são conhecidos por sua força, agilidade surpreendente para o tamanho e habilidades de natação (no caso de algumas espécies, como o urso-polar).',
  },
  {
    imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://www.infoescola.com/wp-content/uploads/2008/05/capivara-119654188.jpg"}}/>,
    nome: 'Capivara', 
    características:'A capivara é o maior roedor do mundo, conhecida por seu comportamento tranquilo e sociável. Originária da América do Sul, ela habita áreas próximas a rios, lagos e pântanos, sendo uma excelente nadadora. Com seu corpo robusto e pelagem marrom, adapta-se tanto à terra quanto à água.Esses animais vivem em grupos organizados, liderados por um macho dominante, e se comunicam através de grunhidos e assobios. Herbívoras, alimentam-se de grama, plantas aquáticas e frutas. Além disso, têm uma relação simbiótica com aves como os anuros, que se alimentam de parasitas em sua pele.',
  },
  {
    imagem: <Image style={{width: 300 ,height: 200, borderRadius:10,}} source={{uri: "https://static.biologianet.com/2024/01/gorila-ocidental-das-terras-baixas.jpg"}}/>,
    nome: 'Gorila', 
    características:'O gorila é o maior primata do mundo, conhecido por sua força impressionante e comportamento social complexo. Existem duas espécies principais: o gorila-das-montanhas e o gorila-ocidental, ambos encontrados nas florestas tropicais da África. Eles possuem corpos robustos, com braços longos e musculosos, usados para caminhar e escalar, e uma pelagem que varia de marrom-acinzentada a preta, sendo que os machos adultos desenvolvem uma mancha prateada nas costas, ganhando o nome de "costas-prateadas".Os gorilas são herbívoros, alimentando-se principalmente de folhas, frutas e brotos, mas podem ocasionalmente consumir insetos. Vivem em grupos familiares liderados por um macho dominante, que protege o grupo e toma decisões importantes.',
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
      <Text style={styles.textNome}>Leão</Text>
      <Image style={{width: 300 ,height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR7JxtnB290OhJRoVtLm-OsJjVhEXKkcVwa8u7rZCc7Pd2q5wwM"}}/>
      </Pressable>

      <Text style={styles.textNome}>Elefente</Text>
      <Pressable style={styles.pressable} onPress={() => abrir(1)}>
      <Image style={{width: 300, height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://naturezaanimal.com.br/wp-content/uploads/2022/08/elefante-africano.webp"}}/>
      </Pressable>

      <Text style={styles.textNome}>Urso</Text>
      <Pressable style={styles.pressable} onPress={() => abrir(2)} >
      <Image style={{width: 300 ,height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1O6J2RXGsVcgzCUBvMJ5VyRvd1y77ZvSoA&s"}}/>
      </Pressable>
 
      <Text style={styles.textNome}>Capivara</Text>
      <Pressable style={styles.pressable} onPress={() => abrir(3)} >
      <Image style={{width: 300 ,height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://www.infoescola.com/wp-content/uploads/2008/05/capivara-119654188.jpg"}}/>
      </Pressable>

      <Text style={styles.textNome}>Gorila</Text>
      <Pressable style={styles.pressable} onPress={() => abrir(4)} >
      <Image style={{width: 300 ,height: 200, borderRadius:10, marginBottom: 20,}} source={{uri: "https://static.biologianet.com/2024/01/gorila-ocidental-das-terras-baixas.jpg"}}/>
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