import 'package:animation/controller/text_slide_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlideScreen extends StatelessWidget {
  const SlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animated Slide',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Consumer<TextSlideProvider>(
        builder: (context, value, child) => Center(
          child: GestureDetector(
            onTap: () {
              value.textSlide();
            },
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 93, 85),
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
                alignment:
                    value.selected ? Alignment.topLeft : Alignment.bottomCenter,
                duration: const Duration(seconds: 1),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Moving..!",
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
