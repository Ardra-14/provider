import 'package:flutter/material.dart';
import 'package:my_app/page_3.dart';
import 'package:my_app/provider/provider_demo.dart';
import 'package:provider/provider.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Page Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color : Colors.yellow,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
              },
              child: Text("Button 2"),
              ),
              Text(Provider.of<ProviderDemo>(context).test1),
          ],
        ),
      ),
    );
  }
}