import 'package:flutter/material.dart';
import 'package:my_app/page_1.dart';
import 'package:my_app/provider/provider_demo.dart';
import 'package:my_app/provider/provider_demo2.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget{
  @override

  //provider

  // Widget build(BuildContext context){
  //   return ChangeNotifierProvider(
  //     create: (context) => ProviderDemo(),
  //     child: MaterialApp(
  //       title : "Provider",
  //       home: Page1(),
  //     ),
  //   );
  // }

  //multiprovider

 Widget build(BuildContext context){
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> ProviderDemo()),
        ChangeNotifierProvider(create: (context)=> ProviderDemo2()),
      ],
      child: MaterialApp(
          title : "Provider",
          home: Page1(),
      ),
    );
  }
  
}