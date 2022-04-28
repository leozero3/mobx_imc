import 'package:flutter/material.dart';
import 'package:mobx_imc/modelo_observado/modelo_observado_page.dart';
import 'package:mobx_imc/observables/future/future_page.dart';
// flutter pub run build_runner watch
// pub run build_runner watch
// flutter pub run build_runner clean
// flutter pub run build_runner watch --delete-conflicting-outputs

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ImcPage(),
      // home: ObservableListPage(),
      // home: ModeloObservadoPage(),
      home: FuturePage(),
    );
  }
}
