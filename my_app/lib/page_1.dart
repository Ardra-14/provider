import 'package:flutter/material.dart';
import 'package:my_app/page_2.dart';
import 'package:my_app/provider/provider_demo.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Page One"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.yellow,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
              child: Text("Button 1"),
            ),
            SizedBox(
              height: 20,
            ),
            // Text(Provider.of<ProviderDemo>(context).test1),
            // SizedBox(height: 20,),
            // MaterialButton(
            // color : Colors.yellow,
            // onPressed: (){
            //   Provider.of<ProviderDemo>(context,listen: false).changeValue("Value Changed");
            // },
            // child: Text("Change value"),
            // ),
            // SizedBox(height: 20,),

            //consumer

            Consumer<ProviderDemo>(
              builder: (context, value, child) {
              return Text(value.test1);
            }),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.yellow,
              onPressed: () {
                Provider.of<ProviderDemo>(context, listen: false)
                    .changeValue("Value Changed");
              },
              child: Text("Change value"),
            ),
            SizedBox(height: 20,),
            Provider.of<ProviderDemo>(context).widget(),
          ],
        ),
      ),
    );
  }
}
