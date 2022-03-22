import 'package:flutter/material.dart';

class ketiga_page extends StatelessWidget {
  const ketiga_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page Ketiga"),
        ),
      body: Center(
        child: ElevatedButton(child: Text("Back"), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      ),
    );
  }
}
