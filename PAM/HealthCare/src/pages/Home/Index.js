
import { StatusBar, setStatusBarHidden } from 'expo-status-bar';
import { StyleSheet, Text, View, Modal, Button, Image, ScrollView, Pressable,} from 'react-native';
import React, { useState } from 'react';
import { useNavigation } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import AsyncStorage from '@react-native-async-storage/async-storage';



export default function App() {
  const navigation = useNavigation();
  

  return (

    <View style={styles.container}>

      <ScrollView style={styles.scrollView}>
      
      <Pressable style={styles.pressab} onPress={ () => navigation.navigate('IMC')} >
        <View style={styles.row}>
          <Image style={{ width: 40, height: 40,marginRight:10,}} source={require('./../../../assets/balaça.png')}/>
          <Text style={styles.textNome}>Calculadora de IMC</Text>
        </View>
      </Pressable>

      <Pressable style={styles.pressable} onPress={ () => navigation.navigate('Vacina')} >
        <View style={styles.row}>
          <Image style={{ width: 40, height: 40,marginRight:10,}} source={require('./../../../assets/vacina.png')}/>
          <Text style={styles.textNome}>Registro de Vacinas</Text>
        </View>
      </Pressable>

      <Pressable style={styles.pressable} onPress={ () => navigation.navigate('Remedio')}>
        <View style={styles.row}>
          <Image style={{ width: 40, height: 40,marginRight:10,}} source={require('./../../../assets/remedio.png')}/>
          <Text style={styles.textNome}>Alarme de Remédio</Text>
        </View>
      </Pressable>

      <Pressable style={styles.pressable} onPress={ () => navigation.navigate('Sla')} >
        <View style={styles.row}>
          <Image style={{ width: 40, height: 40,marginRight:10,}} source={require('./../../../assets/agua.png')}/>
          <Text style={styles.textNome}>Lembrete de Água</Text>
        </View>
      </Pressable>

      <Pressable style={styles.pressable} onPress={ () => navigation.navigate('Sla')} >
        <View style={styles.row}>
          <Image style={{ width: 40, height: 40,marginRight:10,}} source={require('./../../../assets/zzz.png')}/>
          <Text style={styles.textNome}>Dicas para Dormir</Text>
        </View>
      </Pressable>

      <Pressable style={styles.pressable} onPress={ () => navigation.navigate('Sla')} >
        <View style={styles.row}>
          <Image style={{ width: 40, height: 40,marginRight:10,}} source={require('./../../../assets/om.png')}/>
          <Text style={styles.textNome}>Mantras</Text>
        </View>
      </Pressable>

      <Pressable style={styles.pressable} onPress={ () => navigation.navigate('Sla')} >
        <View style={styles.row}>
          <Image style={{ width: 40, height: 40,marginRight:10,}} source={require('./../../../assets/maca.png')}/>
          <Text style={styles.textNome}>Frutas</Text>
        </View>
      </Pressable>
      </ScrollView>
    </View>
  );
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'whitesmoke',
    justifyContent: 'center',
  },
  modal :{
    flex: 1,
    backgroundColor: '#039A00',
    alignItems: 'center',
    justifyContent: 'center',
  },
  pressab: {
    marginTop:80,
    marginBottom: 10,
    marginLeft:5,
    marginRight:5,
    borderWidth: 2,
    borderRadius: 5,
    padding: 15,
    backgroundColor: 'black',
  },
  pressable: {
    marginBottom: 10,
    marginLeft:5,
    marginRight:5,
    borderWidth: 2,
    borderRadius: 5,
    padding: 15,
    backgroundColor: 'black',
  },
  textModal: {
    color: 'black',
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
  },
  row: {
    flexDirection: 'row',
    alignItems: 'center', // Para alinhar verticalmente
  },
});