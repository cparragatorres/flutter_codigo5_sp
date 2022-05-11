
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String nombre = "No hay nombre";

  @override
  initState(){
    super.initState();
    estaFuncionEsParaObtenerLaData();
  }

  estaFuncionEsParaObtenerLaData() async{
    // getName().then((value){
    //   nombre = value;
    //   setState(() {
    //
    //   });
    // });

    nombre = await getName();
    setState(() {

    });

  }

  Future<String> getName() async {
    return Future.delayed(Duration(seconds: 3),(){
      return "Manolo Robles";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(nombre),
      ),
    );
  }
}
