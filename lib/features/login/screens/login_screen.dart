import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app_tus_test/core/widgets/buttons/reusable_elevated_button.dart';
import 'package:todo_app_tus_test/core/widgets/forms/reusable_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String _email = '';
  String _password = '';
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const FlutterLogo(size: 120),
              const Text("Inicio de sesión"),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _loginKey,
                  child: Column(
                    children: [
                      CustomFormField(
                          textController: emailController,
                          labelText: 'Usuario:',
                          hintText: 'Ejemplo@gmail.com',
                          maxLiness: 1,
                          prefixIcon: Icons.email,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(40)
                          ],
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Este campo no puede estar vacío';
                            }
                            if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return 'Por favor ingrese un correo valido.';
                            }
                            return null;
                          },
                          onSaved: (String? emailA) {
                            _email = emailA!;
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomFormField(
                        textController: passwordController,
                        labelText: 'Contraseña:',
                        maxLiness: 1,
                        obscureText: hidepass,
                        inputFormatters: [LengthLimitingTextInputFormatter(40)],
                        prefixIcon: Icons.lock,
                        suffix: InkWell(
                          onTap: _togglepass,
                          child: Icon(
                            hidepass ? Icons.visibility : Icons.visibility_off,
                            color: Colors.red,
                          ),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Este campo no puede estar vacío';
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ReusableElevatedButton(
                title: 'Iniciar sesión',
                press: () {
                  print('Hola');
                  if (_loginKey.currentState!.validate()) {
                    _email = emailController.text;
                    _password = passwordController.text;
                  } else {
                    ('Por favor llene los campos correctamente');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglepass() {
    setState(() {
      hidepass = !hidepass;
    });
  }
}
