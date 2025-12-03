import 'package:flutter/material.dart';
import 'package:form_flutter/widgets/my_alert.dart';
import 'package:form_flutter/widgets/my_button.dart';
import 'package:form_flutter/widgets/my_checkbox.dart';
import 'package:form_flutter/widgets/my_radio.dart';
import 'package:form_flutter/widgets/my_slider.dart';
import 'package:form_flutter/widgets/my_switch.dart';
import 'package:form_flutter/widgets/my_text_field.dart';
import 'package:form_flutter/widgets/my_title.dart';


class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  double _sliderValue = 0;
  bool _notify = false;
  List<String> _listPrefs =[];
  String _gender = "Masculino";
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerData = TextEditingController();

  @override
  void dispose() {
    _controllerData.dispose();
    _controllerNome.dispose();
    super.dispose();
  }

  void _changeList( pref) {
    (!_listPrefs.contains(pref))
    ? _listPrefs.add(pref)
    : _listPrefs.remove(pref);
  }

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

              MyTitle(title: "Dados Pessoais"),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Nome",
                  isDate: false,
                  controller: _controllerNome,

                ),
              ),

              SizedBox(height: 20,
              ),
              
              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title:"Data de Nascimento",
                  isDate: true,
                  controller: _controllerData,
                ),
                ),

              SizedBox (height: 20),

               MyTitle(title:"Gênero"),

              SizedBox(height: 15),
              
              MyRadio( 
                value: (v){
                  _gender = v;
                }
              ),
              
              SizedBox(height: 15),

              MyTitle(title: "Preferencias"),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(
                    title: "Música",
                    value: _changeList,
                  ),
                  MyCheckbox(
                    title: "Esportes",
                    value: _changeList,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(
                    title: "Filmes e séries",
                    value: _changeList,
                  ),
                  MyCheckbox(
                    title: "Culinária",
                    value: _changeList,
                  ),
                  ],
              ),

              SizedBox(height:15),

              MyTitle(title: "Escolaridade"),

              SizedBox(height: 15),
              
              MySlider(
                value: (v){
                  setState(() {
                    _sliderValue = v!;
                  });
                },
              ),

              SizedBox(height:15),

              MySwitch(title: "Deseja receber Notificações?",
              value: (v){
                setState(() {
                  _notify = v!;
                });
              }
              ),

              SizedBox(height:15),

              MyButton(
                title: ("Salvar"), 
                icon: Icons.save,
                onClick: (){
                   print(_controllerData.text);
                  print(_controllerNome.text);
                  print(_gender);
                  print(_listPrefs);
                  print(_sliderValue);
                  print(_notify);

                  MyAlert.showSimpleDialog(
                    context,
                    "Dados cadastrais",
                    "${_controllerNome.text}\n"
                    "${_controllerData.text}\n"
                    "$_gender\n"
                    "$_listPrefs\n"
                    "$_sliderValue\n"
                    "$_notify" 
                    );
                },
                )
            ],
          ),
        ),
      ), 
    );
  }
}