import 'package:flutter/material.dart';
import 'package:form/form.dart';
import 'package:get/get.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Page')),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: Get.mediaQuery.size.width * .80,
                  child: Input(
                    'simple-input',
                    decoration: InputDecoration(labelText: 'Simple Input'),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      print(
                          'VALOR NO INPUT -> ${Input.get('simple-input').text}');
                    })
              ],
            ),
            Row(
              children: [
                Container(
                  width: Get.mediaQuery.size.width * .80,
                  child: Input(
                    'email-input',
                    validators: [Validators.email],
                    decoration: InputDecoration(labelText: 'Email Input'),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      Input.get('email-input').validate();
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
