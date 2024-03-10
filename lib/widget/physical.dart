import 'package:animation/controller/physical_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Physical extends StatelessWidget {
  const Physical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('Physical Model',style: TextStyle(color: Colors.white),),
      ),
      body: Consumer<PhysicalProvider>( builder: (context, value, child) => 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedPhysicalModel(
                shape: BoxShape.rectangle,
                elevation: value.isElevated ? 8 : 0,
                color: Colors.yellow,
                shadowColor: Colors.white,
                duration: const Duration(milliseconds: 500),
                child: const SizedBox(
                  height:200,
                  width: 200,
                  child: Icon(Icons.favorite_border,size: 30,),
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