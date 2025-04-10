import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, Button, Image} from 'react-native';
import { useNavigation } from '@react-navigation/native';
import * as Animatable from 'react-native-animatable';
import AsyncStorage from '@react-native-async-storage/async-storage';

export default function Home() {
    const navigation = useNavigation();
  return (
    <View style={styles.container}>
      <View style={styles.botao}>
      <Button title="Cadastrar" onPress={ () => navigation.navigate('Cadastro') }/>
      <Button title="Home" onPress={ () => navigation.navigate('Home') }/>
      <Button title="Sobre" onPress={ () => navigation.navigate('Sobre') }/>
      <Button title="Menu" onPress={ () => navigation.navigate('Menu') }/>
      </View>

      <StatusBar style="auto" />
    </View>
    
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'green',
    alignItems: 'center',
    justifyContent: 'center',
    textAlign: 'center',
    
  },
  text: {
    fontWeight: '500',
    color: 'white',  
    fontSize: 30,
    textAlign: 'center',
  },
  botao: {
    color: 'red', 
  },
});
