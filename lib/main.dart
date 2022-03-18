import 'dart:developer';
import 'dart:ui';

import 'package:app_row_column04/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//====================== 16 Navigasi Multi Page Screen ====================
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

//======================== 15 Draggable, Dragtarget, SizedBox, Material =====================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Color color1 = Colors.red;
//   Color color2 = Colors.blue;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Draggable, Dragtarget, SizedBox, Material'),
//         ),
//         body: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   //1
//                   Draggable <Color>(
//                     data: color1,
//                     child: SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: color1,
//                         shape: const StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                     childWhenDragging: const SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: Colors.black26,
//                         shape: StadiumBorder(),
//                         elevation: 0,
//                       ),
//                     ),
//                     feedback: SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: color1.withOpacity(0.9),
//                         shape: const StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                   ),
//                   //2
//                   Draggable <Color>(
//                     data: color1,
//                     child: SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: color1,
//                         shape: const StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                     childWhenDragging: const SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: Colors.black26,
//                         shape: StadiumBorder(),
//                         elevation: 0,
//                       ),
//                     ),
//                     feedback: SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: color1.withOpacity(0.9),
//                         shape: const StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                   ),
//                   //3
//                   Draggable <Color>(
//                     data: color1,
//                     child: SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: color1,
//                         shape: const StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                     childWhenDragging: const SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: Colors.black26,
//                         shape: StadiumBorder(),
//                         elevation: 0,
//                       ),
//                     ),
//                     feedback: SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: Material(
//                         color: color1.withOpacity(0.9),
//                         shape: const StadiumBorder(),
//                         elevation: 3,
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ]),
//       ),
//     );
//   }
// }

//======================== 14 Spacer Widget ====================================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Spacer Widget'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Flexible(
//                 child: Container(
//                   child: Row(
//                     children: <Widget>[
//                       const Spacer(
//                         flex: 1,
//                       ),
//                       Container(
//                         width: 80,
//                         height: 80,
//                         color: Colors.green,
//                       ),
//                       const Spacer(
//                         flex: 1,
//                       ),
//                       Container(
//                         width: 80,
//                         height: 80,
//                         color: Colors.blue,
//                       ),
//                       const Spacer(
//                         flex: 1,
//                       ),
//                       Container(
//                         width: 80,
//                         height: 80,
//                         color: Colors.red,
//                       ),
//                       const Spacer(
//                         flex: 1,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.only(top: 10),
//                     width: 80,
//                     height: 80,
//                     color: Colors.blueGrey,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.only(top: 10),
//                     width: 80,
//                     height: 80,
//                     color: Colors.purple,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//======================== 13 Image Widget =====================================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Latihan Image Widget'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Flexible(
//               flex: 2,
//               child: Container(
//                 margin: const EdgeInsets.all(5),
//                 padding: const EdgeInsets.all(5),
//                 color: Colors.amber,
//                 width: 900,
//                 height: 900,
//                 child: const Image(
//                   image: NetworkImage(
//                       "https://cloud.jpnn.com/photo/arsip/normal/2021/12/10/film-animasi-my-little-pony-a-new-generation-akhirnya-tayang-ggj9.jpg"),
//                   fit: BoxFit.cover,
//                   // fit: BoxFit.contain,
//                   repeat: ImageRepeat.repeat,
//                 ),
//               ),
//             ),
//              Flexible(
//                flex: 2,
//                child: Container(
//                 margin: const EdgeInsets.all(5),
//                 padding: const EdgeInsets.all(5),
//                 color: Colors.amber,
//                 width: 900,
//                 height: 700,
//                 child: const Image(
//                   image: AssetImage(
//                       "images/gbr1.jpg"),
//                   // fit: BoxFit.none,
//                   fit: BoxFit.fill,
//                   // repeat: ImageRepeat.repeat,
//                 ),
//                          ),
//              ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//================= 09 List View ====================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];
//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('List View'),
//         ),
//         body: ListView(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                   child: Text("Tambah Data"),
//                   onPressed: () {
//                     setState(() {
//                       widgets.add(Text(
//                         "Data Ke-" + counter.toString(),
//                         style: TextStyle(fontSize: 25, fontFamily: ("BebasNeue-Regular")),
//                       ));
//                       counter++;
//                     });
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text("Hapus Data"),
//                   onPressed: () {
//                     setState(() {
//                       widgets.removeLast();
//                       counter--;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: widgets,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//================= 08 Text Style ====================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Latihan text style'),
//         ),
//         body: const Center(
//           child: Text(
//             'Ini Adalah Text',
//             style: TextStyle(
//                 fontFamily: "BebasNeue-Regular", fontStyle: FontStyle.italic),
//           ),

//         ),
//       ),
//     );
//   }
// }

//=================== 07 Anonymous Method ==================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   void tombolDiTekan(){
//     setState(() {
//       message = "Tombol Sudah Ditekan";
//     });
//   }

//   String message = "Ini Adalah Text";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Anounymous Method'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(message),
//               RaisedButton(
//                 child: Text('Tekan Saya'),
//                 onPressed: tombolDiTekan,
//               ),
//               RaisedButton(
//                 child: Text('Reset Saya'),
//                 onPressed: () { //Contoh Anounymous Method
//                   setState(() {
//                     message = "Ini Adalah Text";
//                   });
//                 }
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//=================== 06 Stateles & Statefull Widget =================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number = 0;

//   @override
//   Widget build(BuildContext context) {
//     void tekanTombol() {
//       setState(() {
//         number = number + 1;
//       });
//     }

//     void resetTombol() {
//       setState(() {
//         number = 0;
//       });
//     }

//     void kali2(){
//       setState(() {
//         number = number * 2;
//       });
//     }

//     void tambah2(){
//       setState(() {
//         number = number + 2;
//       });
//     }

//     void kurang2(){
//       setState(() {
//         number = number - 2;
//       });
//     }

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Demo Statefull Widget'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble()),),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   RaisedButton(
//                     child: Text('Tambah Bilangan'),
//                     onPressed: tekanTombol,
//                     color: Colors.amber,
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 10),
//                     child: RaisedButton(
//                       child: Text('Reset'),
//                       onPressed: resetTombol,
//                       color: Colors.blueAccent,
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   RaisedButton(
//                     child: Text('X 2'),
//                     onPressed: kali2,
//                     color: Colors.green,
//                   ),

//                   Container(
//                     margin: EdgeInsets.only(left: 10),
//                     child: RaisedButton(
//                       child: Text('+ 2'),
//                       onPressed: tambah2,
//                       color: Colors.cyan,
//                     ),
//                   ),

//                   Container(
//                     margin: EdgeInsets.only(left: 10),
//                     child: RaisedButton(
//                       child: Text('- 2'),
//                       onPressed: kurang2,
//                       color: Colors.amber,
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//==================== 05 Container Widget ===========================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Latihan Container'),
//       ),
//       body: Container(
//         color: Colors.red,
//         margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
//         padding: const EdgeInsets.only(bottom: 20, top: 20),
//         child: Container(
//           margin: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             gradient: LinearGradient(
//                 colors: <Color>[Colors.amber, Colors.blue],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomLeft),
//           ),
//         ),
//       ),
//     ));
//   }
// }

//============== Latihan 04 Row dan Column ================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//         title: Text("Row & Column Column"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Text1"),
//           Text("Text2"),
//           Text("Text3"),
//           Row(
//             children: [
//               Text("Text4"),
//               Text("Text5"),
//               Text("Text6"),
//             ],
//           )
//         ],

//       ),
//       ),
//     );
//   }
// }
