import 'package:animation/controller/icon_animation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IconAnim extends StatefulWidget {
  const IconAnim({Key? key}) : super(key: key);

  @override
  _IconAnimState createState() => _IconAnimState();
}

class _IconAnimState extends State<IconAnim> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    final iconProvider = Provider.of<IconAnimationProvider>(context, listen: false);
    iconProvider.controller = AnimationController(
      duration: Duration(seconds: 1),
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
      appBar: AppBar(
        title: Text('Icon Animation'),
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
