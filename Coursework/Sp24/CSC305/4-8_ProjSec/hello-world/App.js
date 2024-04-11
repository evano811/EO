import React, { useState } from 'react';
import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, Button } from 'react-native';

export default function App() {
  const [counter, setCounter] = useState(0);

  const incrementCounter = () => {
    setCounter(counter + 2);
  };

  const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: 'white',
      alignItems: 'center',
      justifyContent: 'center',
    },
  });

  return (
    <View style={styles.container}>
      <Text style={{ fontSize: 56 }}>Hello World!</Text>

      <Text style={{ fontSize: 40 }}>Counter: {counter}</Text>
      <Button 
        title="Increment" 
        onPress={incrementCounter} 
      />

      <Button
        title="Reset"
        onPress={() => setCounter(0)}
      />

      <StatusBar style="auto" />
    </View>
  );
}