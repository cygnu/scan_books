import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:scanner/models/google_book_response.dart';
import 'package:scanner/models/google_books_response.dart';
import 'package:scanner/views/main_view_model.dart';
import 'package:scanner/views/main_view_model_data.dart';

void main() => runApp(ScanApp());

class ScanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Barcode Scanner'),
        ),
        body: StateNotifierProvider<MainViewModel, MainViewModelData>(
          create: (_) => MainViewModel(),
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _scanBarcode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    final response = context.select<MainViewModelData, GoogleBooksResponse>(
        (data) => data.response);
    final state = context.select<MainViewModelData, MainViewModelState>(
        (data) => data.viewModelState);
    final List<GoogleBookResponse> bookList =
        response != null ? response.items : [];

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
