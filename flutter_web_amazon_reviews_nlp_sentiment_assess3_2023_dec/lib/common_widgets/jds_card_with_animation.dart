import 'package:flutter/material.dart';

///
/// JDS - Joiner Design System widgets library [JDSCardWithAnimation]
///
class JDSCardWithAnimation extends StatefulWidget {
  const JDSCardWithAnimation({
    required this.text,
    this.color,
    super.key,
  });
  final String text;
  final Color? color;

  @override
  JDSCardWithAnimationState createState() => JDSCardWithAnimationState();
}

class JDSCardWithAnimationState extends State<JDSCardWithAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _shakeAnimation = Tween<double>(begin: 0.0, end: 10.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticInOut),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shakeAnimation,
      child: Card(
        color: widget.color,
        elevation: 6,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: Text(widget.text),
        ),
      ),
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_shakeAnimation.value * (_controller.value <= 0.5 ? -1 : 1), 0),
          child: child,
        );
      },
    );
  }
}
