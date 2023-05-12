import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/widgets/forms/reusable_form_field.dart';

class FormularioP extends StatefulWidget {
  const FormularioP({super.key});

  @override
  State<FormularioP> createState() => _FormularioPState();
}

class _FormularioPState extends State<FormularioP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.white,
          title: const  Text('Formulario', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),
        body: Center(
          child: Form(child: 
          Column(
             children: [
              CustomFormField(
                
              )
             ],
          )
          )
        ),
    );
  }
}