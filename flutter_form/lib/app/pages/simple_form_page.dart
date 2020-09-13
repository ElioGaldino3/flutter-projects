import 'package:flutter/material.dart';
import 'package:form/form.dart';
import 'package:get/route_manager.dart';

class SimpleForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Page')),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              FormInput(
                'simple-form',
                child: Column(
                  children: [
                    Input(
                      'email',
                      validators: [
                        Validators.email
                          ..msg("Insira um endereço de e-mail válido")
                      ],
                    ),
                    Input(
                      'password',
                      validators: [
                        Validators.minLength(4)
                          ..msg("Insira ao menos 4 caracteres")
                      ],
                    ),
                  ],
                ),
              ),
              RaisedButton(
                  child: Text('Validar'),
                  onPressed: () {
                    if (FormInput.get('simple-form').validate()) {
                      Get.rawSnackbar(message: 'Validado com sucesso!');
                      print(FormInput.get('simple-form').input('email').text);
                      print(
                          FormInput.get('simple-form').input('password').text);
                    }
                  })
            ],
          )),
    );
  }
}
