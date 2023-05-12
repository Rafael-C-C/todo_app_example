import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app_tus_test/core/widgets/buttonsB/reusable_button_b.dart';
import 'package:todo_app_tus_test/core/widgets/forfieldsB/reusable_formfieldB.dart';
import 'package:todo_app_tus_test/features/home/screens/home_screen.dart';
import 'package:todo_app_tus_test/features/register/screens/register_screen.dart';

class LoginScreenB extends StatefulWidget {
  const LoginScreenB({super.key});

  @override
  State<LoginScreenB> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenB> {
  final _loginKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String email = '';
  String password = '';
  bool isVisible = true;

  void _verPassword() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 120,
              ),
              const Text('Inicio de sesion'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                    key: _loginKey,
                    child: Column(
                      children: [
                        ReusableFormFieldBryan(
                          textController: emailController,
                          labelText: 'Usuario:',
                          hintText: 'Ejemplo@gmail.com',
                          maxLin: 1,
                          prefixIcon: Icons.email,
                          formatter: [LengthLimitingTextInputFormatter(40)],
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
                            email = emailA!;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ReusableFormFieldBryan(
                          textController: passwordController,
                          labelText: 'Contraseña:',
                          maxLin: 1,
                          obscureText: isVisible,
                          formatter: [LengthLimitingTextInputFormatter(40)],
                          prefixIcon: Icons.lock,
                          suffix: InkWell(
                            onTap: _verPassword,
                            child: Icon(
                              isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
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
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ReusabelButton(
                                title: 'Iniciar sesión',
                                press: () {
                                  if (_loginKey.currentState!.validate()) {
                                    email = emailController.text;
                                    password = passwordController.text;
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()));
                                  } else {
                                    ('Por favor llene los campos correctamente');
                                  }
                                },
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreenB()));
                                },
                                child: const Text(
                                  'Registrate Aqui',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
