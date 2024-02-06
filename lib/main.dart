import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hitung/views/components/component.dart';
import 'package:hitung/views/pages/page.dart';
import 'package:hitung/views/widgets/widget.dart';
import 'package:hitung/utils/util.dart';
import 'package:hitung/services/service.dart';
import 'package:hitung/models/model.dart';
import 'package:hitung/blocs/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hitung',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
