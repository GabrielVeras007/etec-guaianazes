import { StatusBar } from 'expo-status-bar';
import { useState } from "react";
import { StyleSheet, Text, View,  Button, Picker, TextInput } from 'react-native';

export default function App() {

  const [valor1, setValor1] = useState();
  const [valor2, setValor2] = useState();
  const [calculo, setCalculo] = useState();
  const [exibir, setExibir] = useState();

  const ExibirResultado = () => {
    
    setExibir([calculo]);

    if(calculo=="+") {
      setExibir (parseFloat(valor1) + parseFloat(valor2)) ;

    }else if (calculo=="-") {
      setExibir (parseFloat(valor1) - parseFloat(valor2)) ;

    }else if (calculo=="*") {
      setExibir (parseFloat(valor1) * parseFloat(valor2)) ;

    }else if (calculo=="/") {
      setExibir (parseFloat(valor1) / parseFloat(valor2)) ;
    }
  };

  return (
    <View style={styles.container}>
      <StatusBar style="auto" />

        <View style={styles.dados}>
          <Text style={{fontSize: 25,marginTop:5, marginBottom:5, textAlign: 'center'}}>Calculadora</Text>

          <TextInput  style={styles.input}
            onChangeText = {(valor1) => setValor1(valor1)}
          placeholder="Digite o primeiro valor"/>
            

          <TextInput style={styles.input}
          onChangeText = {(valor2) => setValor2(valor2)}
          placeholder="Digite o segundo valor"/>

          <Text style={{fontSize: 25,marginTop:5, marginBottom:5, textAlign: 'center'}}>Operação</Text>

          <Picker style={{fontSize:18,marginBottom:10,marginTop:5,    padding: 5, borderRadius: 5, }}
          selectedValue={calculo}
          onValueChange={(itemValue) => setCalculo(itemValue)}
          >

          <Picker.Item label="+" value="+"/>

          <Picker.Item label="-" value="-"/>

          <Picker.Item label="x" value="*"/>


          <Picker.Item label="/" value="/"/>

        </Picker>

        <Button title="Calculo" onPress={() => ExibirResultado()}/>
        </View>


      <View style={styles.sla}>
      <Text style={{fontSize: 25,marginTop:5,}}>Resultado:{exibir}</Text>

    </View>

    </View>


  );
}
// ESTILIZAÇÃO

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundcolor: '#fff',
    padding: 10,
  },
  input: {
    borderWidth: 1,
    borderColor:'black',
    borderRadius: 5,
    fontSize:18,
    marginBottom: 10,
    padding: 5,
  },
  dados: {
    backgroundColor: '#fff',
    borderWidth: 2,
    borderColor:'black',
    borderRadius: 10,
    marginBottom: 15,
    padding: 10,
  },
  sla: {
    backgroundColor: '#fff',
    borderWidth: 2,
    borderColor:'black',
    borderRadius: 10,
    padding: 10,
  },

});


