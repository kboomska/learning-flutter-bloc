import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BLoC with flutter_bloc',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC with flutter_bloc'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          height: 100,
          width: 100,
          color: Colors.red,
          duration: const Duration(
            milliseconds: 500,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.red,
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
