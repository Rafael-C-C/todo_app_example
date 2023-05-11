import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app_tus_test/core/widgets/buttonB/reusable_elevated_buttonB.dart';
import 'package:todo_app_tus_test/core/widgets/forms/reusable_form_field.dart';
import 'package:todo_app_tus_test/features/home/screens/home_screen.dart';

class LoginScreenP extends StatefulWidget {
  const LoginScreenP({super.key});

  @override
  State<LoginScreenP> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenP> {
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
        appBar: AppBar(title: const Text('Hola')),
        body: Center(
          child: Column(
            children: [
              const FlutterLogo(size: 100),
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
                          onSaved: (String? emaiLa) {
                            _email = emaiLa!;
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
                            color: Colors.blue,
                          ),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Este campo no puede estar vacío';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ReusableElevatedButton(
                title: 'Iniciar sesión',
                press: () {
                  if (_loginKey.currentState!.validate()) {
                    _email = emailController.text;
                    _password = passwordController.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
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
