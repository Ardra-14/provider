import 'package:flutter/material.dart';
import 'package:my_app/page_1.dart';
import 'package:my_app/provider/provider_demo.dart';
import 'package:provider/provider.dart';
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Page Three"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color : Colors.yellow,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
              },
              child: Text("Hello"),
              ),
              Text(Provider.of<ProviderDemo>(context).test1),
          ],
        ),
      ),
    );
  }
}