import { StatusBar } from 'expo-status-bar';
import { useState, useEffect } from "react";
import { StyleSheet, Text, View, Image, TextInput, Button, Alert,Pressable} from 'react-native';
import { CheckBox } from 'react-native-web';
import { useNavigation } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import AsyncStorage from '@react-native-async-storage/async-storage';

export default function App() {
  const navigation = useNavigation();

  const [nome, setNome] = useState('');
  const [idade, setIdade] = useState('');
  const [telefone, setTelefone] = useState('');
  const [email, setEmail] = useState('');
  const [animal, setAnimal] = useState('');
  const [aceito, setAceito] = useState(false);

  // Verifica se o usuário já está logado
  useEffect(() => {
    const checkLogin = async () => {
      const user = await AsyncStorage.getItem('user');
      if (user) {
        navigation.navigate('Home'); // Redireciona para a tela de animais se o usuário estiver logado
      }
    };
    checkLogin();
  }, []);

  // Função para salvar os dados no AsyncStorage
  const handleContinue = async () => {
    if (aceito && nome && idade && telefone && email) {
      const userData = {
        nome,
        idade,
        telefone,
        email,
        animal,
      };

      try {
        await AsyncStorage.setItem('user', JSON.stringify(userData)); // Salva os dados do usuário
        Alert.alert('Sucesso', 'Usuário salvo com sucesso!');
        navigation.navigate('Home'); // Navega para a próxima tela
      } catch (error) {
        Alert.alert('Erro', 'Erro ao salvar os dados.');
      }
    } else {
      Alert.alert('Atenção', 'Preencha todos os campos e aceite os termos.');
    }
  };

  return (
    <View style={styles.container}>
      <StatusBar style="auto" />

      {/* TELA */}


      <View style={styles.dados}>
        <Text style={{ fontSize: 25, marginTop: 5 }}>Cadastro</Text>

        <TextInput
          style={styles.input}
          onChangeText={(text) => setNome(text)}
          placeholder="Nome"
        />

        <TextInput
          style={styles.input}
          onChangeText={(text) => setIdade(text)}
          placeholder="Idade"
        />

        <TextInput
          style={styles.input}
          onChangeText={(text) => setTelefone(text)}
          placeholder="Telefone"
        />

        <TextInput
          style={styles.input}
          onChangeText={(text) => setEmail(text)}
          placeholder="Email"
        />

        <View style={styles.info}>
          <View style={{ flexDirection: "row", width: "90%" }}>
            <CheckBox value={aceito} onValueChange={() => setAceito(!aceito)} />
            <Text style={{ marginLeft: 5 }}>Aceita os termos de Serviço</Text>
          </View>
        </View>
      </View>

      <View style={styles.sla}>
        <Text style={{ fontSize: 18, marginBottom: 5 }}>Nome: {nome}</Text>
        <Text style={{ fontSize: 18, marginBottom: 5 }}>Idade: {idade}</Text>
        <Text style={{ fontSize: 18, marginBottom: 5 }}>Telefone: {telefone}</Text>
        <Text style={{ fontSize: 18, marginBottom: 5 }}>Email: {email}</Text>
        <Text style={{ fontSize: 18, marginBottom: 5 }}>Aceito: {aceito ? "👍" : "👎"}</Text>
      </View>

      <Pressable style={styles.botao} onPress={ () => navigation.navigate('Home') }>
        <Text style={styles.texto}>Continuar</Text>
      </Pressable>
    </View>
  );
}

// ESTILIZAÇÃO
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundcolor: 'black',
    padding: 10,
    marginTop:60,
  },
  input: {
    borderWidth: 1,
    borderColor: 'black',
    fontSize: 18,
    marginBottom: 10,
    padding: 5,
  },
  imagem: {
    display: 'flex',
    alignItems: 'center',
  },
  dados: {
    backgroundColor: '#fff',
    borderWidth: 2,
    borderColor: 'black',
    borderRadius: 10,
    marginBottom: 15,
    padding: 10,
  },
  info: {
    backgroundColor: '#fff',
    marginTop: 15,
    marginBottom: 15,
  },
  sla: {
    backgroundColor: '#fff',
    borderWidth: 2,
    borderColor: 'black',
    borderRadius: 10,
    padding: 10,
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
  texto: {
    fontSize: 16,
    lineHeight: 21,
    fontWeight: 'bold',
    letterSpacing: 0.25,
    color: 'white',
  }
});
