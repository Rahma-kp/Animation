import 'package:animation/controller/sandbox_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SandBoxScreen extends StatefulWidget {
  const SandBoxScreen({super.key});

  @override
  State<SandBoxScreen> createState() => _SandBoxScreenState();
}

class _SandBoxScreenState extends State<SandBoxScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('Animated Container ',style: TextStyle(color:  Colors.white),),
      ),
      body: Consumer<SandBoxProvider>(builder: (context, value, child) => 
         Center(
          child: AnimatedContainer(
            margin: EdgeInsets.all(value.margin),
            width: value.width,
            color: value.color,
            duration: const Duration(seconds: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                 value.sandBoxChange();
                  },
                  child: const Text(
                    "Animate",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
