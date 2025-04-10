import React, { useState, useEffect } from 'react';
import { View, Text, TextInput, TouchableOpacity, FlatList, StyleSheet } from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';

export default function VaccineRegister() {
  const [vaccine, setVaccine] = useState('');
  const [date, setDate] = useState('');
  const [dose, setDose] = useState('');
  const [vaccines, setVaccines] = useState([]);

  useEffect(() => {
    loadVaccines();
  }, []);

  const loadVaccines = async () => {
    try {
      const storedVaccines = await AsyncStorage.getItem('vaccines');
      if (storedVaccines) {
        setVaccines(JSON.parse(storedVaccines));
      }
    } catch (error) {
      console.error('Erro ao carregar as vacinas', error);
    }
  };

  const saveVaccines = async (newVaccines) => {
    try {
      await AsyncStorage.setItem('vaccines', JSON.stringify(newVaccines));
    } catch (error) {
      console.error('Erro ao salvar as vacinas', error);
    }
  };

  const addVaccine = () => {
    if (vaccine && date && dose) {
      const newVaccines = [...vaccines, { id: Date.now().toString(), vaccine, date, dose }];
      setVaccines(newVaccines);
      saveVaccines(newVaccines);
      setVaccine('');
      setDate('');
      setDose('');
    }
  };

  return (
    <View style={styles.container}>
      <TextInput
        style={styles.input}
        placeholder="Nome da Vacina"
        value={vaccine}
        onChangeText={setVaccine}
      />
      <TextInput
        style={styles.input}
        placeholder="Data (DD/MM/AAAA)"
        value={date}
        onChangeText={setDate}
      />
      <TextInput
        style={styles.input}
        placeholder="Notas"
        value={dose}
        onChangeText={setDose}
      />
      <TouchableOpacity style={styles.button} onPress={addVaccine}>
        <Text style={styles.buttonText}>Adicionar Vacina</Text>
      </TouchableOpacity>
      <FlatList
        data={vaccines}
        keyExtractor={(item) => item.id}
        renderItem={({ item }) => (
          <View style={styles.listItem}>
            <Text style={styles.listText}>Nome:{item.vaccine} Data:{item.date} Notas:{item.dose}</Text>
          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '',
    marginTop:40,
  },
  input: {
    height: 40,
    borderColor: '#ccc',
    borderWidth: 1,
    borderRadius: 8,
    paddingHorizontal: 10,
    marginBottom: 10,
    backgroundColor: '#fff',
  },
  button: {
    backgroundColor: 'black',
    padding: 10,
    borderRadius: 8,
    alignItems: 'center',
  },
  buttonText: {
    color: '#fff',
    fontWeight: 'bold',
  },
  listItem: {
    backgroundColor: '#d3d3d3',
    padding: 10,
    borderRadius: 8,
    marginTop: 10,
  },
  listText: {
    color: 'black',
    fontSize:17,
  },
});