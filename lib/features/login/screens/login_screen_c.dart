import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app_tus_test/core/widgets/forms/reusable_form_field.dart';
import 'package:todo_app_tus_test/features/home/screens/home_screen.dart';
import 'package:todo_app_tus_test/features/login/screens/register_screenC.dart';

import '../../../core/widgets/buttonB/reusable_elevated_buttonB.dart';

class LoginScreenC extends StatefulWidget {
  const LoginScreenC({super.key});

  @override
  State<LoginScreenC> createState() => _LoginScreenCState();
}

class _LoginScreenCState extends State<LoginScreenC> {
  final _loginKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String email = "";
  String passsword = "";
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: _loginKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "Iniciar sesión",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FlutterLogo(
                          size: 120,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomFormField(
                        textController: emailController,
                        labelText: "Correo",
                        hintText: "ejemplo@gmail.com",
                        icon: Icons.email,
                        inputFormatters: [LengthLimitingTextInputFormatter(40)],
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Pr favor ingrese su contraseña";
                          }
                          if (!RegExp(
                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]",
                          ).hasMatch(value)) {
                            return 'Por favor ingrese un correo valido.';
                          }
                          return null;
                        },
                        onSaved: (String? emailA) {
                          email = emailA!;
                        }),
                    //
                    const SizedBox(
                      height: 20,
                    ),
                    CustomFormField(
                      textController: passwordController,
                      labelText: "contraseña",
                      hintText: "************",
                      icon: Icons.lock,
                      maxLiness: 1,
                      obscureText: isVisible,
                      suffix: GestureDetector(
                          onTap: toggleVisibility,
                          child: Icon(
                            isVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.blue,
                          )),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(20),
                      ],
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Rellene este campó";
                        }

                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            ReusableElevatedButton(
              width: 200,
              title: "Crear cuenta",
              press: () {
                if (_loginKey.currentState!.validate()) {
                  email = emailController.text;
                  passsword = passwordController.text;

                  // Navigator.pushAndRemoveUntil<void>(
                  //   context,
                  //   MaterialPageRoute<void>(
                  //     builder: (BuildContext context) => const LoginScreenC(),
                  //   ),
                  //   ModalRoute.withName('/'),
                  // );
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                      return const HomeScreen();
                    }),
                    (route) => false,
                  );
                } else {
                  "Los campos no pueden estar vacios";
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿No tienes cuenta?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreenC(),
                      ),
                    );
                  },
                  child: const Text("Crear cuenta"),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }
}
