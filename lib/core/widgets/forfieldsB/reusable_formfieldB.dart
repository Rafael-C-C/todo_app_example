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
  final Function(String?)? onChanged;
  final TextInputType keyboardType;
  final void Function()? onPress;
  final String? helperText;
  final String? counterText;
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
    this.helperText,
    this.counterText,
    this.keyboardType = TextInputType.name,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      onTap: onPress,
      onSaved: onSaved,
      inputFormatters: formatter,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      controller: textController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: hintText,
        labelText: labelText,
        suffix: suffix,
        helperText: helperText,
        counterText: counterText,
      ),
      validator: validator,
    );
  }
}
