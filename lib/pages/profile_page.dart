
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String fullName = "";
  String address = "";
  bool darkMode = false;
  int gender = 1;


  @override
  initState(){
    super.initState();
    getData();
  }

  getData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    fullName = prefs.getString("fullName") ?? "";
    address = prefs.getString("address") ?? "";
    darkMode = prefs.getBool("darkMode") ?? false;
    gender = prefs.getInt("gender") ?? 1;
    setState(() {

    });
  }



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
                title: Text(fullName),
                subtitle: Text("Full name"),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text(address),
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
