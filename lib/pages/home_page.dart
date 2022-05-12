
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //then
  //async - await

  Future<int> getNumberMandarina() async{
    return Future.delayed(Duration(seconds: 3), (){
      return 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getNumberMandarina(),
        builder: (BuildContext context, AsyncSnapshot snap){
          if(snap.hasData){
            int numero = snap.data;
            return Center(
              child: Text("$numero"),
            );
          }
          return Center(
            child: Text("Cargando..."),
          );
        },
      ),
    );
  }


}

