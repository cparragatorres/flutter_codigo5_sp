import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //then
  //async - await

  Future<int> getNumberMandarina() async {
    return Future.delayed(Duration(seconds: 3), () {
      return 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Home"),
      ),
      drawer: Drawer(
        elevation: 0,
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1145720/pexels-photo-1145720.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Juan Ramón Lopez",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0),
                    ),
                    Text(
                      "Administrador",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy,
              ),
              title: Text("Portfolio"),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
              ),
              title: Text("Change Password"),
            ),
            Divider(
              thickness: 0.6,
              indent: 12,
              endIndent: 12,
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
              ),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Color(0xff424242),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Full name"
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Address"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
