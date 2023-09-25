import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  _setState createState() => _setState();
}

class _setState extends State<Home>{
  final GlobalKey _globalKey = GlobalKey();
  QRViewController? controller;
  Barcode? result;

  void qrCont(QRViewController controller){
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
      }
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qr scanner'),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: QRView(
                  key: _globalKey,
                  onQRViewCreated: qrCont
              ),
            ),
            
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: (result != null) ? Text('${result!.code}') :
              const Text('Scan a Qr code',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            )
          ],
        ),
      ),

    );
  }
}