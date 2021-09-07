import 'package:flutter/material.dart';
import 'package:flutter_app/model.dart';
import 'package:flutter_app/service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nro = TextEditingController();
  TextEditingController img = TextEditingController();
  ApiService api = ApiService();
  void actualizar(Model model) {
    setState(() {
      img.text = model.slink.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maincra'),
      ),
      body: Column(
        children: [
          TextField(
            controller: nro,
            decoration: InputDecoration(hintText: 'Nro'),
          ),
          ElevatedButton(
            onPressed: () async {
              Model model = await api.getData(int.parse(nro.text));
              actualizar(model);
            },
            child: Text('Obtener'),
          ),
          Image.network(img.text)
        ],
      ),
    );
  }
}
