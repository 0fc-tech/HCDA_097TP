import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp/app.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Connexion'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("Connexion à Twitter"),
              FormSignIn()
            ],
          ),
        ));
  }
}

class FormSignIn extends StatelessWidget {
  FormSignIn({
    super.key,
  });

  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "Identifiant"),
            validator: (identifiant){
              if(identifiant == null)
                return "Merci de rentrer un email";
              if(identifiant.isNotEmpty && RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(identifiant)){
                return null;
              }else{
                return "L'email n'est pas valide";
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Mot de passe"),
          ),
          Row(
            children: [
              Switch(
                  value: false,
                  onChanged: (b){}
              ),
              Text("Mémoriser mes informations")
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FilledButton(
                onPressed: (){
                  if(keyForm.currentState?.validate() == true){
                    context.go('/');
                  }
                },
                child: Text("Connexion")
            ),
          )
        ],
      ),
    );
  }
}
