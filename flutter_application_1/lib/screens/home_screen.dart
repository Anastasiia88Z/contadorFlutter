import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/counter_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numero de Clicks', style: fontSize30),
            Text('$counter', style: fontSize30), //Text
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print('Hola Mundo: $counter');
        },
      ),
    );
  }
}
