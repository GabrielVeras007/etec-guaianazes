import { StatusBar, setStatusBarHidden } from 'expo-status-bar';
import { StyleSheet, Text, View, Modal, Button, Image, ScrollView, Pressable,} from 'react-native';
import React, { useState } from 'react';
import { ImageBackground } from 'react-native-web';
import * as Animatable from 'react-native-animatable';
import AsyncStorage from '@react-native-async-storage/async-storage';

export default function Sobre() {
  return (
    <View style={styles.container}>
      <ScrollView >
      <Text style={styles.titulo}>Sobre Nós</Text>

      <Image style={styles.images} source={{uri: "https://png.pngtree.com/png-vector/20221014/ourmid/pngtree-zoo-cartoon-illustration-with-safari-animals-elephant-png-image_6283661.png"}}/>
      <Text style={styles.text}>Bem-vindo ao Zookids, um espaço dedicado à conservação, educação e ao encantamento da vida selvagem. Fundado com a missão de proteger espécies ameaçadas e promover a conscientização ambiental, nosso zoológico oferece uma experiência única de conexão com a natureza.

Com uma vasta diversidade de animais de todo o mundo, nossos habitats são projetados para proporcionar bem-estar e conforto aos nossos residentes, respeitando ao máximo seu ambiente natural. Aqui, você poderá explorar e aprender sobre a rica biodiversidade do planeta, desde os gigantes da savana africana até as curiosas criaturas das profundezas da floresta amazônica.

Além de ser um local de lazer para toda a família, o Zookids é também um centro de pesquisa e preservação. Trabalhamos lado a lado com cientistas e conservacionistas em projetos que buscam garantir um futuro sustentável para a fauna global.

Nosso compromisso com a educação é forte: oferecemos programas interativos e visitas guiadas que despertam nas novas gerações o amor e o respeito pela natureza. No Zookids, acreditamos que juntos podemos fazer a diferença para o futuro do nosso planeta.

Venha nos visitar e se encantar com a beleza e a diversidade do mundo animal!</Text>
    </ScrollView>
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
    textAlign: 'center',
    paddingTop: 60,
    
  },
  images: {
    flex:1,
    width: 200 ,
    height: 200, 
    marginTop:80, 
    alignItems: 'center',
    justifyContent: 'center',

    
  },
  titulo: {
    fontWeight: '500',
    color: 'white',  
    fontSize: 30,
    textAlign: 'center',
    
  },
  text: {
    fontWeight: '500',
    color: 'white',  
    fontSize: 20,
    textAlign: 'center',
    alignItems: 'center',
    justifyContent: 'center',
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
