import 'package:flutter/material.dart';
import '../widgets/counter_one.dart';
import '../widgets/middle_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build=====>>>Main");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Managing state without tools'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue[100],
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Managing state without tools',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.amber),
              ),
            ),
            const SizedBox(height: 20.0),
            CounterOne(
              counter: counter,
              increment: increment,
            ),
            const SizedBox(height: 20.0),
            MiddleContainer(counter: counter),
          ],
        ),
      ),
    );
  }
}
