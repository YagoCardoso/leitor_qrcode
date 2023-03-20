import 'package:flutter/material.dart';
import 'dart:async';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'models/scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Code Scanner',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QR Code Scanner'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final result = await Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Scanner()));
              if (result != null) {
                print('QR code lido: $result');
              }
            },
            child: const Text('Iniciar Scanner'),
          ),
        ),
      ),
    );
  }
}
