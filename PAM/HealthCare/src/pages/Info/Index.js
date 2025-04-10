import { StatusBar, setStatusBarHidden } from 'expo-status-bar';
import { StyleSheet, Text, View, Modal, Button, Image, ScrollView, Pressable,} from 'react-native';
import React, { useState } from 'react';
import { ImageBackground } from 'react-native-web';
import * as Animatable from 'react-native-animatable';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { useNavigation } from '@react-navigation/native';


export default function App() {
  const navigation = useNavigation();
  return (

    <View style={styles.container}>
      <Image style={{width: 200 ,height: 200, marginTop:100,}} source={{uri: "https://cdn-icons-png.flaticon.com/512/25/25400.png"}}/>
      <Animatable.View animation="tada" delay={400}>
      <Pressable style={styles.botao} >
        <Text style={styles.texto}>Conta</Text>
      </Pressable>
      <Pressable style={styles.botao}>
        <Text style={styles.texto}>Como chegar?</Text>
      </Pressable>
      <Pressable style={styles.botao} onPress={ () => navigation.navigate('Sobre') }>
        <Text style={styles.texto}>Sobre</Text>
      </Pressable>
      <Pressable style={styles.botao}>
        <Text style={styles.texto}>Ingressos</Text>
      </Pressable>
      <Pressable style={styles.botao} >
        <Text style={styles.texto}>Voltar</Text>
      </Pressable>
      </Animatable.View>


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
    
  },
  text: {
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
