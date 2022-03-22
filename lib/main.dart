import 'dart:developer';
import 'dart:ui';

import 'package:app_row_column04/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//=========================== 18 Card Widget ===================================
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.payment_sharp, "Payment"),
              buildCard(Icons.request_page_sharp, "Request"),
              buildCard(Icons.wallet_giftcard_sharp, "Top Up"),
              buildCard(Icons.wallet_membership, "Rewards"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                FlexibleBuilder(
                                    Icons.payment_rounded, "Payment"),
                                const Spacer(
                                  flex: 1,
                                ),
                                FlexibleBuilder(
                                    Icons.question_answer, "Request"),
                                const Spacer(
                                  flex: 1,
                                ),
                                FlexibleBuilder(Icons.money_sharp, "Top Up"),
                                const Spacer(
                                  flex: 1,
                                ),
                                FlexibleBuilder(
                                    Icons.wallet_membership, "Rewards"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
                    child: const Text(
                      "Recent Activity",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black45),
                    ),
                  ),
                  cardBuilderThree("Top Up", "Using Online Banking", "20.000"),
                  cardBuilderThree(
                      "Ride", "Booking ID: ADR-34501982", "11.000"),
                  cardBuilderThree(
                      "Ride", "Booking ID: ADR-17384754", "32.000"),
                  cardBuilderThree("Grab Food", "McD Darmo", "52.000"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container cardBuilderThree(
      String textJudul, String textDeskripsi, String textBiaya) {
    return Container(
      child: Card(
        elevation: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            textJudul,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Row(child: Icon(Icons.arrow_back_ios_new)),
                      ],
                    ),
                  ),
                  Text(
                    textDeskripsi,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back_ios),
                  Text(textBiaya),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Flexible FlexibleBuilder(IconData iconData, String text) {
    return Flexible(
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            color: Colors.black54,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: "BebasNeue-Regular",
                fontSize: 15,
                color: Colors.black38),
          )
        ],
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.blueGrey,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}

//====================== 17 App Bar Gradasi Dengan Corak =====================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: const Icon(
//             Icons.adb_rounded,
//             color: Colors.white,
//           ),
//           title: const Text(
//             "App Bar Example",
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.settings),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: const Icon(Icons.exit_to_app),
//               onPressed: () {
//                 {}
//               },
//             )
//           ],
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff0096ff), Color(0xff6610f2)],
//                 begin: FractionalOffset.topLeft,
//                 end: FractionalOffset.bottomLeft,
//               ),
//               image: DecorationImage(
//                   image: AssetImage("images/pattern.png"),
//                   fit: BoxFit.none,
//                   repeat: ImageRepeat.repeat),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//====================== 16 Navigasi Multi Page Screen ====================
// class MyApp extends StatelessWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

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

//========================= 12 Stack & Align =============================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Belajar Stack & Align'),
//       ),
//       body: Stack(
//         children: <Widget>[
//           //Background
//           Column(
//             children: <Widget>[
//               Flexible(
//                 flex: 1,
//                 child: Row(
//                   children: <Widget>[
//                     Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: const EdgeInsets.all(5),
//                         color: Colors.yellow,
//                       ),
//                     ),
//                     Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: const EdgeInsets.all(5),
//                         color: Colors.red,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Flexible(
//                 flex: 1,
//                 child: Row(
//                   children: <Widget>[
//                     Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: const EdgeInsets.all(5),
//                         color: Colors.blue,
//                       ),
//                     ),
//                     Flexible(
//                       flex: 1,
//                       child: Container(
//                         margin: const EdgeInsets.all(5),
//                         color: Colors.green,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           //listview dengan text
//           ListView(
//             children: <Widget>[
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style:
//                       TextStyle(fontSize: 30, fontFamily: "BebasNeue-Regular"),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 child: const Text(
//                   "Ini Adalah Text yang ada di lapisan tengah dari stack",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//             ],
//           ),
//           //Button
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.blueGrey,
//                 onPrimary: Colors.grey,
//                 elevation: 80, // Elevation
//                 shadowColor: Colors.red, // Shadow Color
//               ),
//               child: const Text(
//                 'My button',
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }

//======================== 11 Flexible Widget ===========================
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flexible Widget'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.red,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.green,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.purple,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.red,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.blue,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.blueGrey,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.blueGrey,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.blueGrey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.blue,
//                       margin: EdgeInsets.all(5),
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.amber,
//                       margin: EdgeInsets.all(5),
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.greenAccent,
//                       margin: EdgeInsets.all(5),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

//======================== 10 Animated Container ========================
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Random random = Random();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Belajar Flutter'),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {});
//             },
//             child: AnimatedContainer(
//               color: Color.fromARGB(255, random.nextInt(256),
//                   random.nextInt(256), random.nextInt(256)),
//               duration: Duration(seconds: 1),
//               width: 50.0 + random.nextInt(101),
//               height: 50.0 + random.nextInt(101),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Belajar Flutter'),
//         ),
//         body: Center(
//           child: Text('Ini Bodys'),
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
