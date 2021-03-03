// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:audioplayers/audio_cache.dart'; // This is needed for AudioPlayer.
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Homepage(title: 'Basic Phrases'),
//     );
//   }
// }
//
// class Homepage extends StatefulWidget {
//   const Homepage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   final TextEditingController controller = TextEditingController();
//   Map<String, dynamic> map;
//   String _value = '';
//
//   Future<void> getMovies() async {
//     final Response resp =
//         await get('https://yts.mx/api/v2/list_movies.json?page=2');
//     map = jsonDecode(resp.body);
//   }
//
//   void onSearchTextChanged(String text) async {
//     setState(() {
//       print(text);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: [
//           Container(
//             color: Colors.tealAccent,
//             child: new Padding(
//               padding: const EdgeInsets.all(2.0),
//               child: new Card(
//                 child: new ListTile(
//                   leading: new IconButton(
//                     icon: new Icon(Icons.search),
//                     onPressed: () {
//                       onSearchTextChanged(_value);
//                     },
//                   ),
//                   title: new TextField(
//                     controller: controller,
//                     decoration: new InputDecoration(
//                         hintText: 'Search', border: InputBorder.none),
//                     onChanged: (String value) {
//                       _value = value;
//                     },
//                   ),
//                   trailing: new IconButton(
//                     icon: new Icon(Icons.cancel),
//                     onPressed: () {
//                       controller.clear();
//                       onSearchTextChanged('');
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               // shrinkWrap: true,
//               // gridDelegate:
//               // const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
//               shrinkWrap: true,
//               itemCount: 19,
//               itemBuilder: (BuildContext context, int index) {
//                 getMovies();
//                 return Text(map["data"]["movies"][index]["title"]);
//
//                 // return GestureDetector(
//                 //   onTap: () {
//                 //     setState(() {
//                 //
//                 //     });
//                 //   },
//                 //   child: Stack(
//                 //     children: <Widget>[
//                 //       Container(
//                 //         margin: const EdgeInsets.all(10),
//                 //         alignment: Alignment.bottomCenter,
//                 //
//                 //       ),
//                 //       // Text(audioMap[index~/2].keys.first),
//                 //       Center(
//                 //         child: Column(
//                 //           children: <Widget>[
//                 //             Padding(
//                 //               padding: const EdgeInsets.all(30.0),
//                 //               child: Text(
//                 //                 ''
//                 //               ),
//                 //             ),
//                 //             Text(
//                 //              ''
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
