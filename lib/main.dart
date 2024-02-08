import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hitung/views/components/component.dart';
import 'package:hitung/views/pages/page.dart';
import 'package:hitung/views/widgets/widget.dart';
import 'package:hitung/utils/util.dart';
import 'package:hitung/services/service.dart';
import 'package:hitung/models/model.dart';
import 'package:hitung/blocs/bloc.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  static HomePageBloc homePageBloc = HomePageBloc();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MultiBlocProvider(
      
      providers: [
        BlocProvider(create: (context) => homePageBloc)
      ],
      child: MaterialApp(
        title: 'Hitung',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const WelcomePage(),
      ),
    );
  }
}
