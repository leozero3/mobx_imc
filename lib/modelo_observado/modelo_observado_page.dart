import 'package:flutter/material.dart';

//modelo_observado_page
class ModeloObservadoPage extends StatefulWidget {
  const ModeloObservadoPage({Key? key}) : super(key: key);

  @override
  _ModeloObservadoPageState createState() => _ModeloObservadoPageState();
}

class _ModeloObservadoPageState extends State<ModeloObservadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (_) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final productName = controller.products[index].name;
                    return CheckboxListTile(
                      value: false,
                      onChanged: (_) {},
                      title: Text(productName),
                    );
                  },
                );
              },
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(
                onPressed: () {
                  controller.addProduct();
                },
                child: Text('Adicionar')),
            TextButton(
                onPressed: () {
                  controller.removeProduct();
                },
                child: Text('Remover')),
            TextButton(
                onPressed: () {
                  controller.loadProducts();
                },
                child: Text('Carregar')),
          ]),
        ],
      ),
    );
    ;
  }
}
