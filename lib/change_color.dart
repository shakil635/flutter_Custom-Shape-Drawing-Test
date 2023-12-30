//  import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: CustomPaintedShape(),
//     );
//   }
// }

// class CustomPaintedShape extends StatefulWidget {
//   const CustomPaintedShape({super.key});

//   @override
//   State<CustomPaintedShape> createState() => _TrianglePainterState();
// }

// class _TrianglePainterState extends State<CustomPaintedShape> {

//   List<Color> initialColor = [
//     Colors.black,
//     Colors.green,
//     Colors.amber,
//     Colors.blue
//   ];

//   int indecator = 0;

//   @override
//   Widget build(BuildContext context) {
   
//     return Center(
//       child: SizedBox(
//         height: 300,
//         width: 300,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CustomPaint(
//               painter: TrianglePainter(initialColor[indecator]),
//               size: Size(250, 250),
//             ),
//             SizedBox(height: 15),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     indecator = (indecator + 1) % initialColor.length;
//                   });
//                 },
//                 child: const Text("Change Color!"),
//                 style: ButtonStyle(
                
//                   minimumSize: MaterialStateProperty.all(Size(25, 50)),
//                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
//                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
//                 ),
                
//                 ),
                
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TrianglePainter extends CustomPainter {
//   final Color color;
//   TrianglePainter(this.color);
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()..color = color;
//     final Path path = Path()
//       ..moveTo(size.width / 2, 0)
//       ..lineTo(size.width, size.height)
//       ..lineTo(0, size.height)
//       ..close();
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
