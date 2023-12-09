import 'package:flutter/material.dart';

///
/// JDS - Joiner Design System widgets library [JDSCardWithListTile]
///
class JDSCardWithListTile extends StatelessWidget {
  const JDSCardWithListTile({
    required this.text,
    required this.onPressed,
    required this.icon,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(text),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
