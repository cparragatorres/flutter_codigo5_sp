
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Profile"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.pinkAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Elvis Barrionuevo"),
                subtitle: Text("Full name"),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Av. Cayma 223"),
                subtitle: Text("Address"),
              ),
              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text("Active"),
                subtitle: Text("Dark mode"),
              ),
              ListTile(
                leading: Icon(Icons.circle),
                title: Text("Male"),
                subtitle: Text("Gender"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
