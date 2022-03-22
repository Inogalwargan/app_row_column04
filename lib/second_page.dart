import 'package:app_row_column04/ketiga_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Back"),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          const Spacer(
            flex: 1,
          ),
          ElevatedButton(
            child: Text("Back"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(
            flex: 1,
          ),
          ElevatedButton(
            child: Text("To 3 Page"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ketiga_page();
                }),
              );
            },
          ),
          const Spacer(
            flex: 1,
          ),
        ]),
      ),
    );
  }
}
