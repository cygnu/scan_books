import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scanner/screens/home_screen.dart';

void main() => runApp(
      ProviderScope(
        child: ScanApp(),
      ),
    );

class ScanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
