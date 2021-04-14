import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estiloTexto = new TextStyle(fontSize: 32);
  int contador =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Titulo'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de Clicks', style: estiloTexto),
              Text('$contador', style: estiloTexto),
            ],
          ),
        ),
        floatingActionButton: _jax(),
      ),
    );
  }
  Widget _jax(){
     return Row(
       children: [
   FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              contador++;
            });
          },
        ),
        SizedBox(width:5.0),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: (){
            setState(() {
              contador--;
            });
          },
        ),
        SizedBox(width:200.0),
         FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: (){
            setState(() {
              contador= 0;
            });
          },
        ),
        SizedBox(width:5.0),
       ],
       mainAxisAlignment: MainAxisAlignment.end,
     );
     
  }
}