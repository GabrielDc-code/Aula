import 'package:flutter/material.dart';
import 'package:form_flutter/widgets/my_radio.dart';
import 'package:form_flutter/widgets/my_text_field.dart';


class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário Flutter",
          style: TextStyle(),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom : 8),
                child: Text(
                  "Dados pessoais:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                    ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: MyTextField(),
              ),

              SizedBox(height: 20,
              ),
              
              SizedBox(
                width: double.infinity,
                child: MyTextField(),
                ),

              SizedBox (height: 20),

                Padding(
                padding: EdgeInsets.only(bottom : 8),
                child: Text(
                  "Gênero:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                    ),
                ),
              ),

              SizedBox(height: 15),
              
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyRadio(),
                  MyRadio()
                ],
              )
              
            ],
          ),
        ),
      ), 
    );
  }
}