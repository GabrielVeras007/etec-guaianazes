
import { StatusBar, setStatusBarHidden } from 'expo-status-bar';
import { StyleSheet, Text, View, Modal, Button, Image, ScrollView, Pressable, TextInput} from 'react-native';
import React, { useState } from 'react';
import { useNavigation } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import AsyncStorage from '@react-native-async-storage/async-storage';


export default function App() {
  const navigation = useNavigation();

  const [altura, setAltura] = useState('');
  const [peso, setPeso] = useState('');
  const [imc, setImc] = useState(null);
  const [categoria, setCategoria] = useState('');

  const calcularIMC = () => {
    const alturaMetros = parseFloat(altura) / 100;
    const pesoKg = parseFloat(peso);
    if (!alturaMetros || !pesoKg) {
      setImc(null);
      setCategoria('');
      return;
    }
    const imcCalculado = pesoKg / (alturaMetros * alturaMetros);
    setImc(imcCalculado.toFixed(2));
    
    if (imcCalculado < 18.5) setCategoria('Abaixo do peso');
    else if (imcCalculado < 24.9) setCategoria('Peso normal');
    else if (imcCalculado < 29.9) setCategoria('Sobrepeso');
    else if (imcCalculado < 34.9) setCategoria('Obesidade grau 1');
    else if (imcCalculado < 39.9) setCategoria('Obesidade grau 2');
    else setCategoria('Obesidade grau 3');
  };


  return (
    <View style={styles.container}>
      <View style={styles.entrada}>
        <Text style={styles.text}> Altura (cm): </Text>
        <TextInput
          style={styles.input}
          onChangeText={setAltura}
          keyboardType="numeric"
          placeholder="Ex: 170"
          value={altura}
        />
      </View>
      <View style={styles.entrada}>
        <Text style={styles.text}> Peso (kg): </Text>
        <TextInput
          style={styles.input}
          onChangeText={setPeso}
          keyboardType="numeric"
          placeholder="Ex: 70"
          value={peso}
        />
      </View>
      
      <Pressable style={styles.botao} onPress={calcularIMC}>
        <Text style={styles.textoBotao}>Calcular</Text>
      </Pressable>

      {imc && (
        <View style={styles.resultado}>
          <Text style={styles.text}>IMC: {imc}</Text>
          <Text style={styles.text}>Categoria: {categoria}</Text>
        </View>
      )}
      
      <View style={styles.tabela}>
        <Text style={styles.titulotabela}>Tabela IMC</Text>
        <Text style={styles.texttabela}>Abaixo de 18.5 - Abaixo do peso</Text>
        <Text style={styles.texttabela}>18.5 - 24.9 - Peso normal</Text>
        <Text style={styles.texttabela}>25.0 - 29.9 - Sobrepeso</Text>
        <Text style={styles.texttabela}>30.0 - 34.9 - Obesidade grau 1</Text>
        <Text style={styles.texttabela}>35.0 - 39.9 - Obesidade grau 2</Text>
        <Text style={styles.texttabela}>40.0 ou mais - Obesidade grau 3</Text>
      </View>


      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'whitesmoke',
    paddingTop: 60,
    alignItems: 'center',
  },
  text: {
    fontSize: 30,
  },
  titulotabela: {
    fontSize: 30,
    justifyContent:'center',
    alignItems:'center',
    textAlign:'center',
  },
  texttabela: {
    fontSize: 20,
  },
  entrada: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 10,
  },
  input: {
    fontSize:20,
    color:'black',
    width: 130,
    height:40,
    marginLeft: 10,
    borderWidth: 2,
    borderRadius: 5,
    borderColor: 'black',
    backgroundColor: 'white',
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
    backgroundColor: 'black',
  },
  textoBotao: {
    fontSize: 16,
    color: 'white',
  },
  resultado: {
    marginTop: 20,
    alignItems: 'center',
  },
  tabela: {
    marginTop: 20,
    padding: 10,
    borderWidth: 1,
    borderRadius: 5,
    backgroundColor: 'white',
  }
});