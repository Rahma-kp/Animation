import 'package:animation/controller/icon_animation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IconAnimation extends StatefulWidget {
  const IconAnimation({super.key});

  @override
  _IconAnimationState createState() => _IconAnimationState();
}

class _IconAnimationState extends State<IconAnimation> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    final iconProvider = Provider.of<IconAnimationProvider>(context, listen: false);
    iconProvider.controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    final iconProvider = Provider.of<IconAnimationProvider>(context, listen: false);
    iconProvider.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('Icon Animation',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Consumer<IconAnimationProvider>(
          builder: (context, value, child) => GestureDetector(
            onTap: () {
              value.toggleAnimation();
            },
            child: AnimatedIcon(
              progress: value.controller,
              size: 100,
              icon: AnimatedIcons.add_event,
            ),
          ),
        ),
      ),
    );
  }
}
