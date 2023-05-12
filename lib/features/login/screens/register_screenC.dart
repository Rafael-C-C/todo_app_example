// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app_tus_test/core/widgets/buttonB/reusable_elevated_buttonB.dart';
import 'package:todo_app_tus_test/core/widgets/forms/reusable_form_field.dart';
import 'package:todo_app_tus_test/features/login/screens/login_screen_c.dart';

class RegisterScreenC extends StatefulWidget {
  const RegisterScreenC({super.key});

  @override
  State<RegisterScreenC> createState() => _RegisterScreenCState();
}

class _RegisterScreenCState extends State<RegisterScreenC> {
  final _loginKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 120,
              ),
              const Text(
                "Registro",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _loginKey,
                  child: Column(
                    children: [
                      CustomFormField(
                        labelText: "Nombre:",
                        icon: Icons.person,
                        inputFormatters: [LengthLimitingTextInputFormatter(40)],
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Este campo no puede estar vacio";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomFormField(
                        hintText: "ejemplo@gmail.com",
                        labelText: "email:",
                        icon: Icons.email,
                        inputFormatters: [LengthLimitingTextInputFormatter(40)],
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Este campo es obligatorio";
                          }
                          if (RegExp(
                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]",
                          ).hasMatch(value)) return null;
                          return "Agregue un correo valido";
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomFormField(
                          labelText: "Contraseña:",
                          icon: Icons.lock,
                          obscureText: true,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(40)
                          ],
                          maxLiness: 1,
                          suffix: const Icon(Icons.visibility),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Este campo es obligatorio";
                            }
                            return null;
                          })
                    ],
                  ),
                ),
              ),
              ReusableElevatedButton(
                title: "Crear cuenta",
                press: () {
                  if (_loginKey.currentState!.validate()) {
                    _email = emailController.text;
                    _password = passwordController.text;

                    // Navigator.pushAndRemoveUntil<void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //     builder: (BuildContext context) => const LoginScreenC(),
                    //   ),
                    //   ModalRoute.withName('/'),
                    // );
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute<void>(builder: (BuildContext context) {
                        return const LoginScreenC();
                      }),
                      (route) => false,
                    );
                  } else {
                    "Los campos no pueden estar vacios";
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
