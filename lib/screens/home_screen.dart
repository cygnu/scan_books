import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/models/google_book_response.dart';
import 'package:scanner/views/main_view_model.dart';
import 'package:scanner/views/main_view_model_data.dart';

final viewModel = StateNotifierProvider<MainViewModel, MainViewModelData>(
    (refs) => MainViewModel());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchQuery = new TextEditingController();
  String _scanBarcode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
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
                  onPressed: () => scanBarcode(),
                ),
                hintText: '検索',
              ),
              keyboardType: TextInputType.text,
              onChanged: () {
                context.read(viewModel.notifier).fetch(_searchQuery.text);
              },
            ),
          ),
        ),
      ),
      body: Consumer(
        builder: (context, watch, child) {
          final state = watch(viewModel);

          Widget body = Container();
          if (state.viewModelState == MainViewModelState.loading) {
            body = Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.viewModelState == MainViewModelState.error) {
            body = Center(
              child: Text('エラーが発生しました。検索ワードを変えてお試しください'),
            );
          } else {
            final response = state.response;
            final List<GoogleBookResponse> bookList =
                response != null ? response.items : [];

            body = bookList.length > 0
                ? ListView(
                    children: bookList
                        .map((book) => Card(
                              child: ListTile(
                                title: Text(
                                  book.volumeInfo.title,
                                ),
                              ),
                            ))
                        .toList())
                : Center(
                    child: Text('検索結果は0件です'),
                  );
          }
          return body;
        },
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
