import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReusableFormFieldBryan extends StatelessWidget {
  final TextEditingController? textController;
  final int? maxLin;
  final List<TextInputFormatter>? formatter;
  final String? value;
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? icon;
  final Widget? suffix;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function()? onPress;
  const ReusableFormFieldBryan({
    super.key,
    this.value,
    this.formatter,
    this.maxLin,
    this.obscureText = false,
    this.onPress,
    this.textController,
    this.hintText,
    this.labelText,
    this.icon,
    this.prefixIcon,
    this.suffix,
    this.validator,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      onTap: onPress,
      onSaved: onSaved,
      inputFormatters: formatter,
      obscureText: obscureText,
      controller: textController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: hintText,
        labelText: labelText,
        suffix: suffix,
      ),
      validator: validator,
    );
  }
}
