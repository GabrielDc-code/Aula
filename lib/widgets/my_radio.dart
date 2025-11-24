import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
   
int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded( 
      child : RadioListTile(
      value: _value,
      onChanged: (v)=>_value!=v,
      groupValue:1 ,
      title: Text("Gênero"),
      ),
    );
  }
}