import 'package:flutter/material.dart';
import 'package:vendas_flutter/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ),
  );
}

