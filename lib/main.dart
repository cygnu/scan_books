import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() => runApp(ScanApp());

class ScanApp extends StatefulWidget {
  @override
  _ScanAppState createState() => _ScanAppState();
}

class _ScanAppState extends State<ScanApp> {
  String _scanBarcode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Barcode Scanner'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextButton(
                child: Text('Scan'),
                onPressed: () => scanBarcode(),
              ),
              Text('Result: $_scanBarcode\n'),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> scanBarcode() async {
    String barcodeScanRes;

    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }
}
