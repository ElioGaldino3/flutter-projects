import 'package:flutter/material.dart';
import 'package:flutter_form/app/pages/simple_form_page.dart';
import 'package:get/get.dart';

import 'pages/input_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forms')),
      body: Container(
        width: Get.mediaQuery.size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Input'),
              onPressed: () {
                Get.to(InputPage());
              },
            ),
            RaisedButton(
              child: Text('Simple Form'),
              onPressed: () {
                Get.to(SimpleForm());
              },
            ),
          ],
        ),
      ),
    );
  }
}
