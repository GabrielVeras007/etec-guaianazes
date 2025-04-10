import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { StyleSheet, Image, Pressable } from 'react-native';

import Inicio from './src/pages/Inicio/Index';
import Navegation from './src/pages/Navegation/Index';
import Sobre from './src/pages/Sobre/Index';
import Cadastro from './src/pages/Cadastro/Index';
import Info from './src/pages/Info/Index';
import Home from './src/pages/Home/Index';
import IMC from './src/pages/IMC/Index';
import Vacina from './src/pages/Vacina/Index';
import Remedio from './src/pages/Remedio/Index';
import Sla from './src/pages/Sla/Index';

const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen
          name="Início"
          component={Inicio}
          options={{
            headerShown: false,
          }}
        />
        <Stack.Screen name="Sobre" component={Sobre} 
        options={{
          headerStyle: { backgroundColor: '#039A00' },
          headerTintColor: 'black',
          headerTransparent: true,
          headerTitleStyle: { fontWeight: 'bold' },
        }}
        />
        <Stack.Screen
          name="Cadastro"
          component={Cadastro}
          options={{
            headerTitle: '',
            headerTintColor: 'black',
            headerTransparent: true,
            headerTitleStyle: { fontWeight: 'bold' },
            headerTitle: () => (
              <Image style={{width: 250 ,height: 50,}} source={require('./assets/healthcare-logo.png')}/>),
              
          }}
        />
        <Stack.Screen
          name= 'Home'
          component={Home}
          options={({ navigation }) => ({
            headerTitle: '',
            headerTintColor: 'black',
            headerTransparent: true,
            headerTitleStyle: { fontWeight: 'bold' },
            headerTitle: () => (
            <Image style={{width: 250 ,height: 50,}} source={require('./assets/healthcare-logo.png')}/>),
            
          })}
        />
        <Stack.Screen
          name="IMC"
          component={IMC}
          options={({ navigation }) => ({
            headerTitle: "IMC",
            headerTintColor: 'black',
            headerTransparent: true,
            headerTitleStyle: { fontWeight: 'bold' },
          })}
        />
        <Stack.Screen
          name="Vacina"
          component={Vacina}
          options={({ navigation }) => ({
            headerTitle: "Registro de Vacinas",
            headerTintColor: 'black',
            headerTransparent: true,
            headerTitleStyle: { fontWeight: 'bold' },
          })}
        />
        <Stack.Screen
          name="Remedio"
          component={Remedio}
          options={({ navigation }) => ({
            title: "Remedio",
            headerStyle: { backgroundColor: '#039A00' },
            headerTintColor: 'black',
            headerTransparent: true,
            headerTitleStyle: { fontWeight: 'bold' },
            headerRight: () => (
              <Pressable
                style={styles.botao}
                onPress={() => navigation.navigate('Info')}
              >
                <Image
                  style={{ width: 40, height: 40 }}
                  source={{
                    uri: 'https://cdn-icons-png.flaticon.com/512/25/25400.png',
                  }}
                />
              </Pressable>
            ),
          })}
        />
        <Stack.Screen
          name="Sla"
          component={Sla}
          options={({ navigation }) => ({
            title: "Sla",
            headerStyle: { backgroundColor: '#039A00' },
            headerTintColor: 'black',
            headerTransparent: true,
            headerTitleStyle: { fontWeight: 'bold' },
            headerRight: () => (
              <Pressable
                style={styles.botao}
                onPress={() => navigation.navigate('Info')}
              >
                <Image
                  style={{ width: 40, height: 40 }}
                  source={{
                    uri: 'https://cdn-icons-png.flaticon.com/512/25/25400.png',
                  }}
                />
              </Pressable>
            ),
          })}
        />
        <Stack.Screen
          name="Info"
          component={Info}
          options={{
            headerStyle: { backgroundColor: '#039A00' },
            headerTintColor: 'black',
            headerTransparent: true,
            headerTitleStyle: { fontWeight: 'bold' },
          }}
        />
      </Stack.Navigator>
    </NavigationContainer>
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
  pressable: {
    alignItems: 'center',
    justifyContent: 'center',

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
    marginRight:3,
  },
  texto: {
    fontSize: 16,
    lineHeight: 21,
    fontWeight: 'bold',
    letterSpacing: 0.25,
    color: 'white',
  }
});