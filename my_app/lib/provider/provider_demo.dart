import 'package:flutter/material.dart';


class ProviderDemo extends ChangeNotifier{
  String test1 = " Dummy text";


  void changeValue(String val){
    test1 = val;
    notifyListeners();
  }


  Widget widget(){
    return Container(
      height:100 ,
      width: 100,
      color: const Color.fromARGB(255, 212, 212, 212),
      child: Center(child: Text("Hello")),
    );
  }
}