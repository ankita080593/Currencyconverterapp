import 'package:flutter/material.dart';
import 'package:rupeestodoller/ConvetPage.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Center(child: Text('RupeestoDoller Converter')),),
      body:Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>ConvertPage()));
        },
            child:Text('RupeesToDollerConverter')),
      ) ,);
  }
}
