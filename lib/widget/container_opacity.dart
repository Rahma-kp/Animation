import 'package:animation/controller/container_opacity_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConatinerOpac extends StatelessWidget {
  const ConatinerOpac({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('Opacity Animation',style: TextStyle(color: Colors.white),),
      ),
      body: Consumer<ContainerOpacityProvider>(builder:(context, value, child) => 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 3),
                opacity: value.opacityLevel,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.red, 
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                 value.opacitychange();
                },
                child: const Text("Toggle Opacity"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}