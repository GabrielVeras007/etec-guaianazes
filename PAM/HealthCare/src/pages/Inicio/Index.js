import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, Button, Image,Pressable} from 'react-native';
import { useNavigation } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import AsyncStorage from '@react-native-async-storage/async-storage';

export default function Home() {
    const navigation = useNavigation();
  return (
    <View style={styles.container}>
      

      <Image style={{width: 350 ,height: 150, marginTop:80}} source={require('./../../../assets/healthcare-logo.png')}/>
      <Text style={styles.text}>Bem Vindo ao HealthCare!</Text>

     
      <Pressable style={styles.botao} onPress={ () => navigation.navigate('Cadastro') } >
        <Text style={styles.texto}>Continuar</Text>
      </Pressable>

      <StatusBar style="auto" />
    </View>
    
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'whitesmoke',
    alignItems: 'center',
    justifyContent: 'center',
    textAlign: 'center',
    
  },
  text: {
    fontWeight: '500',
    color: 'black',  
    fontSize: 20,
    textAlign: 'center',
    fontStyle: 'Century Gothic',
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
