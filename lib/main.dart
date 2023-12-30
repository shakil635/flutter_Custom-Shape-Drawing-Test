import 'package:flutter/material.dart';
/*
Practice Question 2: Custom Shape Drawing with CustomPaint
Task Description:
Develop a Flutter application featuring a CustomPaint widget 
that draws a simple shape, like a triangle. 
Implement user interaction allowing the user to 
change the color of the shape through a 
set of predefined color options.
 */


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomPaintedShape(),
    );
  }
}

class CustomPaintedShape extends StatelessWidget {
  const CustomPaintedShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
            height: 200,
            width: 200,
            child: CustomPaint(
              painter: TrianglePainter(100,Colors.red),
             
            )),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final double size;
  final Color color;
  TrianglePainter(this.size,this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    final Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}











































// void main() {
//   runApp(const NewApp());
// }

// class NewApp extends StatelessWidget {
//   const NewApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: CustomPaintedShape(color: Colors.red),
//       ),
//     );
//   }
// }

// class CustomPaintedShape extends StatelessWidget {
  
//   Color color;
//   CustomPaintedShape({super.key, required this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: CustomPaint(
//       painter : CustomPaintedShape (),
       
//       ),
//     );
//   }
// }

// class CustomPaintedShape  extends CustomPainter {
//   final Color color;
//   Circle(this.color);
//   @override
//   void paint(Canvas canvas, Size size) {
    
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
