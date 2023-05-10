import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController? textController; // Controlador de texto
  final int? maxLiness; // Máximo de líneas que se permite
  final int? minLiness; // mínimo de líneas
  final List<TextInputFormatter>? inputFormatters;
  final Function(String?)?
      onSaved; // Se usa principalmente para conectar a la api
  final Function(String?)? onChanged; // función de acción al cambio
  final String value;
  final String? initialValue; // Valor inicial
  final bool onlyRead; //Modo de solo lectura
  final String? hintText; // Texto oculto
  final String? labelText; // Titulo principal
  final String? helperText; // Texto de ayuda
  final bool autofocus; // Cambiar al siguiente
  final bool obscureText; // Password
  final TextInputType keyboardType; // Tipo de texto
  final IconData? icon; // Icono
  final IconData? prefixIcon; // Icono de la izquierda
  final Widget? suffix; // Icono de la derecha
  final String
      obscureTextCharacter; //Modifica el tipo de caracter que se muestra al usar el obscure text
  final EdgeInsets?
      textFieldPadding; //Puede ser utilizado para modificar el tamaño del textfield
  final String? Function(String?)?
      validator; // función para la validación de los datos
  //Text styles
  final TextStyle? labelStyle; // Estilo del texto principal
  final TextStyle? hintStyle; // Estilo del texto secundario
  final void Function()? press;
  const CustomFormField({
    Key? key,
    this.inputFormatters,
    this.textController,
    this.value = '',
    this.onlyRead = false,
    this.initialValue = '',
    this.hintText,
    this.labelText,
    this.helperText,
    this.autofocus = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.name,
    this.icon,
    this.prefixIcon,
    this.suffix,
    this.textFieldPadding,
    this.maxLiness = 6,
    this.minLiness = 1,
    this.validator,
    this.press,
    this.onSaved,
    this.onChanged,
    //Text style
    this.obscureTextCharacter = '*',
    this.hintStyle,
    this.labelStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
              primary: Color.fromARGB(255, 65, 139, 241))),
      //Texfield
      child: TextFormField(
        key: key,
        onTap: press,
        inputFormatters: inputFormatters,
        onSaved: onSaved,
        onChanged: onChanged,
        //initialValue: initialValue,
        readOnly: onlyRead,
        autofocus: false,
        maxLines: maxLiness,
        minLines: minLiness,
        controller: textController,
        obscureText: obscureText,
        obscuringCharacter: obscureTextCharacter,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            prefixIcon: icon == null ? null : Icon(icon),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            contentPadding: textFieldPadding,
            labelText: labelText,
            labelStyle: labelStyle,
            hintText: hintText,
            hintStyle: hintStyle,
            suffix: suffix),
        keyboardType: keyboardType,
        validator: validator,
      ),
    );
  }
}
