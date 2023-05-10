import 'package:flutter/material.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: const Color(0xFF176BFC)),
            child: const Text(
              'Cerrar sesión',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )),
      ),
    );
  }
}
