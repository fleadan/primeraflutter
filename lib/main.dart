import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HelloState();
  }
}

class _HelloState extends State<MyApp>{
  int variable_estado = -1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Hope Star wars Statefull"),
          backgroundColor: Colors.deepPurple.shade300,
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Cambio de la variable de estado: ",
              style: TextStyle(fontSize: 28,
                  color: Colors.deepPurpleAccent),),
            Text('$variable_estado',
              style: TextStyle(fontSize: 40,
                  color: Colors.deepOrange),)
          ],
        ),
      ),
      floatingActionButton: _crea_botones(),
    );
  }

  Widget _crea_botones(){
    return Row(
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton( child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_zero),
        FloatingActionButton(child: Icon(Icons.plus_one),onPressed: masmas),
        FloatingActionButton(child: Icon(Icons.exposure_minus_1),onPressed: menosmenos),
        FloatingActionButton(child: Text("Rnd"),onPressed: rand),
        FloatingActionButton(child: Text("State"), onPressed: menosuno)
      ],
    );
  }

  void funcion_zero(){
    setState(() {
      variable_estado = 0;
    });
  }

  void masmas(){
    setState(() {
      variable_estado += 1;
    });
  }

  void menosmenos(){
    setState(() {
      variable_estado -= 1;
    });
  }

  void rand(){
    setState(() {
      var rng = new Random();
      int randomNumber = rng.nextInt(100);
      variable_estado = randomNumber;
    });
  }

  void menosuno(){
    setState(() {
      variable_estado = -1;
    });

  }
}


class HelloStateless extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        height: 400,
        width: 300,
        child: Center(
          child: Text(
            "Flutter Rules",
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white54,
              fontFamily: "Arial"
          ),
          ),
        ),
      ),
    );
  }

}

void main() {
  runApp(
    MaterialApp(
      title: "Estar guars",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
      )
    )
  );
}


