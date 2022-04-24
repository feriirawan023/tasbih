import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int angka = 0;

  void Tambah() {
    setState(() {
      angka = angka + 1;
    });
  }

  void Riset(){
    setState(() {
      angka = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Tasbih'),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(angka.toString()),
              RaisedButton(child: Icon(Icons.add_circle), onPressed: Tambah),
              RaisedButton(child: Icon(Icons.autorenew), onPressed: Riset)
            ],
          ),
        ),
      ),
    );
  }
}
