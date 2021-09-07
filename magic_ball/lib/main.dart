import 'package:flutter/material.dart';
import 'package:primer_parcial/modelo.dart';
import 'package:primer_parcial/service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio();

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final String link =
      'https://previews.123rf.com/images/peterhermesfurian/peterhermesfurian1701/peterhermesfurian170100051/70448634-bola-de-cristal-globo-de-cristal-vac%C3%ADo-para-la-adivinaci%C3%B3n-.jpg';

  TextEditingController nroController = TextEditingController();
  TextEditingController phraseController = TextEditingController();
  ApiService api = ApiService();

  actualizar(
      Modelo modelo, TextEditingController nro, TextEditingController frase) {
    nro.text = modelo.number.toString();
    frase.text = modelo.phrase.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensaje'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(link),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () async {
                Modelo modelo = await api.getData();
                actualizar(modelo, nroController, phraseController);
              },
              child: Text('Suerte'),
            ),
            SizedBox(height: 30.0),
            TextField(
              controller: nroController,
              decoration: InputDecoration(hintText: 'Numero'),
            ),
            SizedBox(height: 30.0),
            TextField(
              controller: phraseController,
              decoration: InputDecoration(hintText: 'Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
