import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_list_flutter/feature/auth/signin_screen.dart';
import 'package:test_list_flutter/feature/auth/signup_screen.dart';
import 'package:test_list_flutter/ui/theme/custom_scaffold.dart';
import 'package:test_list_flutter/ui/welcome_button.dart';

class WelcomeRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
                child: Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Weelcome back \n",
                            style: TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.w900,
                                color: Colors.white)),
                        TextSpan(
                            text:
                                '\n Enter personal details to your employee account',
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w600,
                                color: Colors.white))
                      ])),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      ButtonText: 'Sing in',
                      onTap: SignUpScreen(),
                      color: Colors.transparent,
                      textCollor: Colors.white,
                    ),
                  ),
                  Expanded(
                      child: WelcomeButton(
                    ButtonText: 'Sing up',
                    onTap: SignInScreen(),
                    color: Colors.white,
                    textCollor: Colors.black,
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
