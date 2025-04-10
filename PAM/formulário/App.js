import { StatusBar } from 'expo-status-bar';
import { useState } from "react";
import { StyleSheet, Text, View,  Image, Picker, TextInput } from 'react-native';
import { CheckBox } from 'react-native-web';

export default function App() {

  const [nome, setNome] = useState();
  const [telefone, setTelefone] = useState();
  const [endereco, setEndereco] = useState();
  const [email, setEmail] = useState();
  const [hobby, setHobby] = useState();
  const [aceito, setAceito] = useState();
  
  return (
    <View style={styles.container}>
      <StatusBar style="auto" />


{/* TELA */}
<View style={styles.imagem}>
    <Image
      style={{ width: 150, height: 150}}
      source={{ uri: "https://i.pinimg.com/1200x/ba/d7/86/bad786dfe4f227555be6fa2484b0b9a3.jpg"}}
    />
</View>

<View style={styles.dados}>
    <Text style={{fontSize: 25,marginTop:5,}}>Dados Pessoais</Text>

    <TextInput  style={styles.input}
        onChangeText = {(text) => setNome(text)}
    placeholder="Digite seu nome"/>
    

    <TextInput style={styles.input}
           onChangeText = {(text) => setTelefone(text)}
    placeholder="Digite seu telefone"/>

    <TextInput style={styles.input}
           onChangeText = {(text) => setEndereco(text)}
    placeholder="Digite seu endereço"/>

    <TextInput style={styles.input}
           onChangeText = {(text) => setEmail(text)}
    placeholder="Digite seu email"/>

</View>

<View style={styles.info}>
    <Text style={{fontSize: 25,marginTop:5,}}>Outras informações</Text>



    <Picker 
    selectValue={hobby}
    style={styles.campo}
    onValueChange={(itemValue, itemIndex) => setHobby(itemValue)}
    
    >

    <Picker.Item label="Programar" value="Programar"/>
    <Picker.Item label="Correr" value="Correr"  />
    <Picker.Item label="Dormir" value="Dormir"  />

    </Picker>

    <View style={{flexDirection: "row", width: "90%"}}>
    <CheckBox

  value={aceito}
  onValueChange={() => setAceito(!aceito)}

    /><Text style={{marginLeft:5 }}>Aceita os termos de Serviço</Text>
    </View>
      

</View>

<View style={styles.sla}>

<Text style={{fontSize: 18,marginBottom:5,}}>Nome: {nome}</Text>

<Text style={{fontSize: 18,marginBottom:5,}}>Telefone: {telefone}</Text>

<Text style={{fontSize: 18,marginBottom:5,}}>Endereço: {endereco}</Text>

<Text style={{fontSize: 18,marginBottom:5,}}>Email: {email}</Text>

<Text style={{fontSize: 18,marginBottom:5,}}>Hobby: {hobby}</Text>

<Text style={{fontSize: 18,marginBottom:5,}}>Aceito: {aceito ? "👍" : "👎"}</Text>

</View>

    </View>


  );
}
// ESTILIZAÇÃO

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundcolor: '#fff',
  },
  input: {
    borderWidth: 1,
    borderColor:'black',
    fontSize:18,
    marginBottom: 10,
    padding: 5,
  },
  imagem: {
    backgroundColor: '#fff',
    display: 'flex',
    alignItems: 'center',
  },
  dados: {
    backgroundColor: '#fff',
    borderWidth: 2,
    borderColor:'black',
    borderRadius: 10,
    marginBottom: 15,
    padding: 10,
  },
  info: {
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
  campo: {
    fontSize:18,
    marginBottom:10,
    marginTop:5,
  }

});


