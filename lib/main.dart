import 'package:flutter/material.dart';
import 'classes2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ampel',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // creating the object
  Lamp lamp = Lamp(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Color.fromARGB(255, 185, 233, 233),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 108, 108, 110),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black, width: 5)),
              height: 300,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(""),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: lamp.actuellLampState == "red" ||
                              lamp.actuellLampState == "redYellow"
                          ? Colors.red
                          : Colors.black,
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    child: Text(""),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: lamp.actuellLampState == "yellow" ||
                              lamp.actuellLampState == "redYellow"
                          ? Colors.yellow
                          : Colors.black,
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    child: Text(""),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: lamp.actuellLampState == "green"
                          ? Colors.green
                          : Colors.black,
                    ),
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 23, 39),
                borderRadius: BorderRadius.circular(30),
              ),
              height: 70,
              width: 150,
              child: Container(
                child: Icon(
                  Icons.nordic_walking,
                  size: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(color: Colors.black, width: 5),
                  color: lamp.actuellLampState == "red"
                      ? Colors.green
                      : Colors.red,
                ),
                height: 60,
                width: 60,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    lamp.click();
                  });
                },
                child: Text("Schalten"))
          ],
        ),
      ),
    );
  }
}
