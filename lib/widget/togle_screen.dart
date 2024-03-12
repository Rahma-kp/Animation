
import 'package:animation/controller/button_contoller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonAnimation extends StatefulWidget {
  const ButtonAnimation({super.key});

  @override
  State<ButtonAnimation> createState() => _ButtonAnimationState();
}

class _ButtonAnimationState extends State<ButtonAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ButtonProider>(builder: (context, value, child) => 
         GestureDetector(onTap: () {
           value.changes();
         },
           child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                   color:value.isLoding? Colors.grey:Colors.amber,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  alignment:Alignment.centerLeft,
                  child: AnimatedAlign(alignment:value.isLoding?Alignment.centerLeft:Alignment.centerRight,duration: Duration(seconds:1),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            )
            
                   ),
         ),
      ));
  }
}
