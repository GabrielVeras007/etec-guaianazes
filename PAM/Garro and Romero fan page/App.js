import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, TextInput, Image, Button, Switch, Picker, ScrollView} from 'react-native';
import { TouchableOpacity } from 'react-native-web';

export default function App() {
  return (
    
    <View style={styles.container}>
      <Text style={{color: "black", fontSize: 50}}>Romero e Garro Fan Page</Text>
      <StatusBar style="auto" />
      
    <ScrollView >

      <TextInput
  style={styles.input}
  placeholder="Siuuuuuuuuu"
  keyboardType="numeric"
/>



    <Image
    
    style={{width: 200, height: 200}}
    source={{ uri: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSySI3qAhSspfnPQhgFd7cDT2W1Zsx0-i9pfw&usqp=CAU"}}

    />
    

    <Button
    
    title="Lionel Romessi"
    color="black"
    
    />
    <Button
    
    title="Cristiano Romero"
    color="black"
    
    />
    <Button
    
    title="O Pelé não negro"
    color="black"
    
    />
    <Button
    
    title="Lá do Paraguai"
    color="black"
    
    />

    <Switch
    
    ios_backgroundColor="pink"
    
    />

    <Picker

    style={{height: 50, width: 150}}

    />

    <Image
    
    style={{width: 200, height: 200}}
    source={{ uri: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiiaRpEp3deeXq09osbUDVSpRwFhoLuxyTnzSwKg4Vq4O8GoeDNlGVP1m34gMDRyDcaSQ&usqp=CAU"}}

    />

    <Button
    
    title="IIII"
    color="black"
    
    />
    <Button
    
    title="Que te puedo disi"
    color="black"
    
    />
    <Button
    
    title="Só lo puedo agradecierrte"
    color="black"
    
    />
    <Button
    
    title="Gracias por ser Difereeennnte"
    color="black"
    
    />



      <Text style={{ fontSize: 50}} >Scroll me please!!!!!!</Text>

    </ScrollView>


    </View>

    
  );
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'white',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
