import 'package:animation/controller/sandbox_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {


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
                 value.sandboxchange();
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
