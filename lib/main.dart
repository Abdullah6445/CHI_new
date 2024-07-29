import 'package:flutter/material.dart';
import 'package:learning_with_chi/PAGES/counter_pages/counter_vu.dart';
import 'package:learning_with_chi/PAGES/second_pages/fetch_data_from_internet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: FetchData(),
    );
  }
}
