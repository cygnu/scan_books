import 'package:barcode_scan2/gen/protos/protos.pb.dart';
import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scan_books/main.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchQuery = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: _searchQuery,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search),
          suffixIcon: IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: () {
              scanBarcode()
                  .then(
                      (value) => context.read(viewModel.notifier).fetche(value))
                  .catchError((e) => {});
            },
          ),
          hintText: '検索',
        ),
        onSubmitted: (String text) {
          context.read(viewModel.notifier).fetch(_searchQuery.text);
        },
      ),
    );
  }

  Future<String> scanBarcode() async {
    ScanResult scanResult;

    try {
      scanResult = (await BarcodeScanner.scan()) as ScanResult;
    } on PlatformException {
      scanResult = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );
    }

    return scanResult.rawContent;
  }
}
