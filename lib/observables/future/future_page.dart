import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/observables/future/future_controller.dart';

class FuturePage extends StatefulWidget {
  FuturePage({Key? key}) : super(key: key);

  @override
  _FuturePageState createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  final controller = FutureController();

  @override
  void initState() {
    super.initState();
    controller.buscarNome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.buscarNome();
        },
      ),
      body: Observer(
        builder: (_) {
          return FutureBuilder(
            future: controller.nomeFuture,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const SizedBox.shrink();
                case ConnectionState.waiting:
                case ConnectionState.active:
                  return const Center(child: CircularProgressIndicator());
                case ConnectionState.done:
                  if (snapshot.hasData) {
                    return Center(
                      child: Text(snapshot.data as String),
                    );
                  }
                  return const Center(
                    child: Text('Nome não encontrado!!!!'),
                  );
              }
            },
          );
        },
      ),
    );
  }
}
