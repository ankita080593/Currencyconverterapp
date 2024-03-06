

import 'dart:ffi';

import 'package:flutter/material.dart';
class ConvertPage extends StatefulWidget {
  const ConvertPage({super.key});

  @override
  State<ConvertPage> createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  TextEditingController rupeesconverter=TextEditingController();
  double dollar=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [SizedBox(height: MediaQuery.of(context).size.height/3,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(controller: rupeesconverter,
          decoration: InputDecoration(hintText: 'Enter rupees amount here',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),),
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          setState(() {
            dollar=double.parse(rupeesconverter.text)*0.012;
          });
        }, child: Text('Convert')),
        SizedBox(height: 30,),
        Text('Dollar:'+ dollar.toString())
      ],
    ),);
  }
}
