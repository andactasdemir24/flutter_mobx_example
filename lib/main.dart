import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/counter.dart';
import 'package:mobx_example/locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterModel counterModel = locator<CounterModel>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterModel.increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Observer(builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times:'),
              Text(
                counterModel.count.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ],
          );
        }),
      ),
    );
  }
}
