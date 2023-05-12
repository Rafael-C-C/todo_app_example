import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app_tus_test/core/widgets/buttonsB/reusable_button_b.dart';
import 'package:todo_app_tus_test/core/widgets/forfieldsB/reusable_formfieldB.dart';
import 'package:todo_app_tus_test/features/login/screens/login_screenB.dart';

class RegisterScreenB extends StatefulWidget {
  const RegisterScreenB({super.key});

  @override
  State<RegisterScreenB> createState() => _RegisterScreenBState();
}

class _RegisterScreenBState extends State<RegisterScreenB> {
  final _registerKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  String _email = '';
  String _password = '';
  String _name = '';
  int _phone = 0;
  bool isVisible = true;
  bool isVisible2 = true;
  int nameCounter = 0;

  void _verPassword() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void _verPassword2() {
    setState(() {
      isVisible2 = !isVisible2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 120,
              ),
              const Text('Registro'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _registerKey,
                  child: Column(
                    children: [
                      ReusableFormFieldBryan(
                        textController: nameController,
                        labelText: 'Usuario',
                        onChanged: (value) {
                          setState(() {
                            nameCounter = nameController.text.length;
                          });
                        },
                        hintText: 'Ingresa un nombre de usuario',
                        maxLin: 1,
                        helperText: 'Maximo 20 caracteres',
                        counterText: '$nameCounter/20 caracteres',
                        prefixIcon: Icons.person,
                        formatter: [
                          LengthLimitingTextInputFormatter(20),
                        ],
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Por favor llene el usuario';
                          }
                          return null;
                        },
                        onSaved: (String? nameU) {
                          _name = nameU!;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusableFormFieldBryan(
                        textController: phoneController,
                        labelText: 'Telefono',
                        hintText: '9999112233',
                        maxLin: 1,
                        keyboardType: TextInputType.phone,
                        prefixIcon: Icons.phone,
                        formatter: [
                          LengthLimitingTextInputFormatter(10),
                        ],
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Por favor llene el telefono';
                          }
                          return null;
                        },
                        onSaved: (String? phoneU) {
                          _phone = phoneU as int;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusableFormFieldBryan(
                        textController: emailController,
                        labelText: 'Correo',
                        hintText: 'correo@correo.com',
                        maxLin: 1,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.email,
                        formatter: [
                          LengthLimitingTextInputFormatter(50),
                        ],
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Por favor llene el correo';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'Por favor ingrese un correo valido.';
                          }
                          return null;
                        },
                        onSaved: (String? emailU) {
                          _email = emailU!;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusableFormFieldBryan(
                        textController: passwordController,
                        labelText: 'Contraseña',
                        maxLin: 1,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isVisible,
                        prefixIcon: Icons.lock,
                        suffix: InkWell(
                          onTap: _verPassword,
                          child: Icon(
                            isVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.blue,
                          ),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'La contraseña no puede estar vacia';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusableFormFieldBryan(
                        textController: confirmPasswordController,
                        labelText: 'Confirmar contraseña',
                        maxLin: 1,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isVisible2,
                        prefixIcon: Icons.lock,
                        suffix: InkWell(
                          onTap: _verPassword2,
                          child: Icon(
                            isVisible2
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.blue,
                          ),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Es necesario confirmar la contraseña';
                          } else {
                            if (value != passwordController.text) {
                              return 'Las contraseñas no coinciden';
                            }
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ReusabelButton(
                          title: 'Registrate',
                          press: () {
                            if (_registerKey.currentState!.validate()) {
                              _email = emailController.text;
                              _password = passwordController.text;
                              confirmPasswordController;
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreenB()));
                            } else {
                              ('Por favor llene los campos correctamente');
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
