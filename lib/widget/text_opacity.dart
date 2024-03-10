import 'package:animation/controller/text_opacity_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OpacityPage extends StatelessWidget {
  const OpacityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('Opacity Animation',style: TextStyle(color: Colors.white),),
      ),
      body: Consumer<TextOpacityprovider>(builder: (context, value, child) => 
         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 2),
                opacity:value. opacityLevel,
                child: const Text(
                  "Rahma",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  value.textopacitychange();
                },
                child: const Text("Toggle Opacity",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}