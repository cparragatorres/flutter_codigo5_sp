import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nombre = "No hay nombre";

  @override
  initState() {
    super.initState();
    estaFuncionEsParaObtenerLaData();
  }

  estaFuncionEsParaObtenerLaData() async {
    // getName().then((value){
    //   nombre = value;
    //   setState(() {
    //
    //   });
    // });

    nombre = await getName();
    setState(() {});
  }

  Future<String> getName() async {
    return Future.delayed(Duration(seconds: 3), () {
      return "Manolo Robles";
    });
  }

  Future<List<String>> getProducts() async {
    print("Estoy en el método getProducts");
    return Future.delayed(Duration(seconds: 3), () {
      return ["Corbatas", "Camisas", "Polos", "Sacos"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getProducts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {

          print(snapshot.connectionState);
          print(snapshot.hasData);
          print(snapshot.data);

          if (snapshot.hasData) {
            List<String> lista = snapshot.data;
            // return ListView.builder(
            //   itemCount: lista.length,
            //   itemBuilder: (BuildContext context, int index){
            //     return ListTile(
            //       title: Text(lista[index]),
            //     );
            //   },
            // );
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {

                  });
                },
                child: Text("Click"),
              ),
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
