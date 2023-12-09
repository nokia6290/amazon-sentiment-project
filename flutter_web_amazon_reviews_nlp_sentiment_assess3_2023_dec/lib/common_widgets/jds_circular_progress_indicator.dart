import 'package:flutter/material.dart';

///
/// JDS - Joiner Design System widgets library [JDSCircularProgressIndicator]
///
class JDSCircularProgressIndicator extends StatelessWidget {
  const JDSCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.lightGreen,
      ),
    );
  }
}
