import 'package:flutter/material.dart';
import 'package:test_list_flutter/feature/auth/signin_screen.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton(
      {super.key,
      required this.ButtonText,
      this.onTap,
      required this.color,
      required this.textCollor});

  final String ButtonText;
  final Widget? onTap;
  final Color? color;
  final Color? textCollor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (e) => onTap!,
            ));
      },
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: color!,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
            )),
        child: Text(
          textAlign: TextAlign.center,
          ButtonText!,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: textCollor!),
        ),
      ),
    );
  }
}
