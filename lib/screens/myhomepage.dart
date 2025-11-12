import 'dart:ui';
import 'package:aula6/model/profile.dart';
import 'package:aula6/widgets/mycard.dart';
import 'package:aula6/widgets/mydrawer.dart';
import 'package:aula6/widgets/mystory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  //Criando lista de dados
  final List<Profile> listaDados =[
    Profile(name:"Oswald", image: "", like: true),
    Profile(name:"Giovana", image: "", like: false),
    Profile(name:"Hilário", image: "", like: true),
    Profile(name:"Homer", image: "", like: false),
    Profile(name:"Augusta", image: "", like: true)
  ];

   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 6"),
        backgroundColor: const Color.fromARGB(255, 240, 105, 121),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaDados.length,
                itemBuilder: (context, itens) {
                  return MyStory(
                    title: listaDados[itens].name
                    );
                }
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaDados.length,
                itemBuilder: (context, item) {
                  return MyCard(
                    title:listaDados[item].name, 
                    image:listaDados[item].image, 
                    like:listaDados[item].like
                    );
                  }
        )
        )
        ],
        ),
      ),
    );
  }
}