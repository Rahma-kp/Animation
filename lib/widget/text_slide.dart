import 'package:animation/controller/text_slide_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Slide extends StatelessWidget {
  const Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Slide'),
        backgroundColor: Colors.teal, 
      ),
      body: Consumer<TextSlideProvider>(builder: (context, value, child) => 
         Center(
          child: GestureDetector(
           onTap: () {
             value.textslide();
            
           },
           child: Container(
             width: double.infinity,
             height: 250,
             decoration: BoxDecoration(
               color: Colors.amber,
               borderRadius: BorderRadius.circular(15.0), 
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(0.5),
                   spreadRadius: 2,
                   blurRadius: 5,
                   offset: const Offset(0, 3),
                 ),
               ],
             ),
             child: AnimatedAlign(
               curve: Curves.easeInOut,
               alignment:value.selected ? Alignment.topLeft : Alignment.bottomCenter,
               duration: const Duration(seconds: 1),
               child: const Padding(
                 padding: EdgeInsets.all(16.0),
                 child: Text(
                   "Moving!",
                   style: TextStyle(
                     fontSize: 24.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
               ),
             ),
           ),
                    ),
        ),
      ),
    );
  }
}