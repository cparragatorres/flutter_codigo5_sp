
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

  Future<List<String>> getProducts() async {
    return Future.delayed(Duration(seconds: 3),(){
      return [
        "Corbatas",
        "Camisas",
        "Polos",
        "Sacos"
      ];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getName(),
        builder: (BuildContext context, AsyncSnapshot snapshot){

          if(snapshot.hasData){
            return Center(
              child: Text(snapshot.data),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );


        },
      ),
    );
  }
}
