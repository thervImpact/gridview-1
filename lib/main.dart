import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Cria uma lista de ícones
  final icons = [
    Icons.star,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.accessible,
    Icons.window,
    Icons.cloud_done,
    Icons.gps_fixed_rounded,
    // Adicione mais ícones conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'Lista em um Grid';
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Cria um grid com duas colunas
          crossAxisCount: 15,
          // Gera 100 Widgets que exibem o seu índice
          children: List.generate(1000, (index) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    icons[index %
                        icons
                            .length], // Escolhe um ícone diferente para cada item
                    color: Color.fromARGB(
                        255, 0, 119, 255), // Escolha a cor do ícone
                  ),
                  Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
