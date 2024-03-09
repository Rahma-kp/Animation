import 'package:animation/controller/physical_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Physical extends StatelessWidget {
  const Physical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Physical Model Example'),
      ),
      body: Consumer<PhysicalProvider>( builder: (context, value, child) => 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedPhysicalModel(
                shape: BoxShape.rectangle,
                elevation: value.isElevated ? 6 : 0,
                color: Colors.yellow,
                shadowColor: Colors.black,
                duration: const Duration(milliseconds: 500),
                child: const SizedBox(
                  height: 120,
                  width: 120,
                  child: Icon(Icons.abc),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                 value.physicalchange();
                },
                child: Text(value.isElevated ? 'Lower' : 'Elevate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}