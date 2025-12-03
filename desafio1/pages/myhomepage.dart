import 'package:desafio1/widget/myappbar.dart';
import 'package:desafio1/widget/myelev.dart';
import 'package:desafio1/widget/myfab.dart';
import 'package:desafio1/widget/mytxt.dart';
import 'package:desafio1/widget/mycontainer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Desafio Flutter - 1",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: MyAppbar()
          ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[MyFab(), MyElev(), MyTxt(), MyContainer()],
        ),
      )
    );
  }
}
