import 'package:app_row_column04/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Go To Second Page"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}
