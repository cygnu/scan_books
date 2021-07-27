import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/views/main_view_model.dart';
import 'package:scanner/views/main_view_model_data.dart';

final viewModel = StateNotifierProvider<MainViewModel, MainViewModelData>(
    (refs) => MainViewModel());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _scanBarcode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextButton(
            child: Text('Scan'),
            onPressed: () => scanBarcode(),
          ),
          Text('Result: $_scanBarcode\n'),
        ],
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
