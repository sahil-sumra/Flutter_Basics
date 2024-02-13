// //  Tarika no 1 ***************************************************************
//
// import 'package:flutter/material.dart';
// void main() {
//   runApp(MaterialApp(
//     title: 'Time App',
//     home: MyHomePage(),
//   ));
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePageState createState() => MyHomePageState();
// }
//
// class MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var time = DateTime.now();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello'),
//       ),
//       body: Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Current time: ${time.hour}:${time.minute}:${time.second}",
//                 style: TextStyle(fontSize: 25),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     // time = DateTime.now();
//                   });
//                 },
//                 child: Text("Refresh Time"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// // tarika noumber 2 ***********************************************************
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Time Tracker',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: TimeTracker(),
//     );
//   }
// }
//
// class TimeTracker extends StatefulWidget {
//   @override
//   _TimeTrackerState createState() => _TimeTrackerState();
// }
//
// class _TimeTrackerState extends State<TimeTracker> {
//   DateTime _currentTime = DateTime.now();
//
//   void _updateTime() {
//     setState(() {
//       _currentTime = DateTime.now();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Time Tracker'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Current Time:',
//               style: TextStyle(fontSize: 20.0),
//             ),
//             Text(
//               '${_currentTime.hour}:${_currentTime.minute}:${_currentTime.second}',
//               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _updateTime,
//         tooltip: 'Update Time',
//         child: Icon(Icons.update),
//       ),
//     );
//   }
// }
//
//
// //Tarika 3 ********************************************************************
//
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// void main() {
//   runApp(MaterialApp(
//     title: 'Time App',
//     home: MyHomePage(),
//   ));
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePageState createState() => MyHomePageState();
// }
//
// class MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var time = DateTime.now();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello'),
//       ),
//       body: Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Current time: ${DateFormat('yMMMd').format(time)}",
//                 style: TextStyle(fontSize: 25),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     // time = DateTime.now();
//                   });
//                 },
//                 child: Text("Refresh Time"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
