// import 'dart:math';
// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// class TestWidget extends StatefulWidget {
//   const TestWidget({Key? key}) : super(key: key);
//
//   @override
//   _TestWidgetState createState() => _TestWidgetState();
// }
//
// class _TestWidgetState extends State<TestWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ClipPath(
//         clipper: CustomShapes(),
//         child: Container(
//           color: Colors.deepOrange,
//         ),
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//       ),
//     );
//   }
// }
//
// class CustomShapes extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//
//     // Offset endPoint = Offset(size.width * 0.025, size.height * 0.8);
//     // Offset controllerPoint = Offset(size.width * 0.05, size.height * 0.83);
//     // path.moveTo(size.width * 0.1, size.height * 0.2);
//     // path.lineTo(size.width * 0.1, size.height * 0.8);
//     // path.lineTo(size.width * 0.8, size.height * 0.8);
//     path.lineTo(size.width * 0.1, size.height * 0.2);
//     // path.moveTo(size.width * 0.1, size.height * 0.75);
//     path.arcTo(
//         Rect.fromCircle(
//           center: Offset(size.width * 0.2, size.height * 0.8),
//           radius: 120,
//         ),
//         1 * pi,
//         0.5 * pi,
//         false);
//     path.close();
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
