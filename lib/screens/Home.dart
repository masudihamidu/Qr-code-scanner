import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  _setHomeState createState() => _setHomeState();
}

class _setHomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qr code scanner'),
        backgroundColor: Colors.lightBlue,
      ),

      body: const Center(
        child: Column(

        ),
      ),

    );
  }
}