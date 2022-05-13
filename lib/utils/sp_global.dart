

import 'package:shared_preferences/shared_preferences.dart';

class SPGlobal{

  static final SPGlobal _instance = SPGlobal._mandarina();

  SPGlobal._mandarina();

  factory SPGlobal(){
    return _instance;
  }

  late SharedPreferences _prefs;

  Future<void> initShared() async{
    _prefs = await SharedPreferences.getInstance();
  }

  //--->

  set fullName(String value){
    _prefs.setString("fullName", value);
  }

  String get fullName {
    return _prefs.getString("fullName") ?? "";
  }




}