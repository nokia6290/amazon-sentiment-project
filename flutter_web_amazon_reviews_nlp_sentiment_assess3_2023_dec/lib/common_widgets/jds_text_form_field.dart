import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// JDS - Joiner Design System widgets library [TextFormField]
///
class JDSTextFormField extends StatelessWidget {
  const JDSTextFormField({
    required this.textEditingController,
    required this.labelText,
    this.errorText,
    this.autoCorrect = false,
    this.hintText,
    this.focusNode,
    this.obscureText = false,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.onFieldSubmitted,
    super.key,
  });

  final TextEditingController textEditingController;
  final String labelText;
  final String? errorText;
  final bool autoCorrect;
  final String? hintText;
  final FocusNode? focusNode;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 56),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(255),
        ],
        controller: textEditingController,
        focusNode: focusNode,
        obscureText: obscureText,
        validator: validator,
        autocorrect: autoCorrect,
        keyboardType: keyboardType,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrangeAccent),
          ),
          contentPadding: const EdgeInsets.all(16),
          labelText: labelText,
          errorText: errorText,
          hintText: hintText,
        ),
      ),
    );
  }
}
