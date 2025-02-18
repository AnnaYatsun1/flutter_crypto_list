import 'package:email_validator_flutter/email_validator_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_list_flutter/feature/auth/signup_screen.dart';
import 'package:test_list_flutter/feature/auth/verify_email_screen.dart';
import 'package:test_list_flutter/feature/auth/verity_screen.dart';
import 'package:test_list_flutter/feature/loading_screen/welcome_screen.dart';
import 'package:test_list_flutter/feature/services/firebase_stream.dart';
import 'package:test_list_flutter/ui/theme/custom_scaffold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formSignKey = GlobalKey<FormState>();
  bool rememberPassword = true;
  EmailValidatorFlutter validator = EmailValidatorFlutter();
  bool isHiddenPassword = true;
  final TextEditingController emailTextInputController =
      TextEditingController();
  final TextEditingController passwordTextInputController =
      TextEditingController();
  final TextEditingController fullNameTextInputController =
      TextEditingController();
  final TextEditingController passwordTextInput2Controller =
      TextEditingController();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    fullNameTextInputController.dispose();
    passwordTextInput2Controller.dispose();
    super.dispose();
  }

  void toogleToPasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    final navigation = Navigator.of(context);
    final isValid = _formSignKey.currentState!.validate();
    if (!isValid) return;
    if (passwordTextInputController.text != passwordTextInput2Controller.text) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Passwords shoud be equel')));
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailTextInputController.text.trim(),
          password: passwordTextInputController.text.trim());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.red,
            content: Text('This password already used')));
        return;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.red, content: Text('Unnown error')));
        return;
      }
    }
    navigation.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => FirebaseStream()),
      (Route<dynamic> route) => false, // Удаляет все предыдущие страницы
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 10,
              )),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Form(
                key: _formSignKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      autocorrect: false,
                      controller: fullNameTextInputController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Pls enter your full name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          label: const Text('Full name'),
                          hintText: 'Full name',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      autocorrect: false,
                      controller: emailTextInputController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Pls enter email';
                        }
                        if (!validator.validateEmail(value)) {
                          return 'please enter correct email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          label: const Text('Email'),
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: isHiddenPassword,
                      autocorrect: false,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: passwordTextInputController,
                      obscuringCharacter: '*',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Pls enter password ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          label: const Text('Password'),
                          hintText: 'Enter Password',
                          suffix: InkWell(
                            onTap: toogleToPasswordView,
                            child: Icon(
                              isHiddenPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black38,
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: isHiddenPassword,
                      autocorrect: false,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: passwordTextInput2Controller,
                      obscuringCharacter: '*',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Pls confirm password ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          label: const Text('Confirm password'),
                          hintText: 'Confirm Password',
                          suffix: InkWell(
                            onTap: toogleToPasswordView,
                            child: Icon(
                              isHiddenPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black38,
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: rememberPassword,
                          onChanged: (bool? value) {
                            setState(() {
                              rememberPassword = value!;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(color: Colors.black45),
                        )
                      ],
                    ),
                    GestureDetector(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formSignKey.currentState!.validate() &&
                                rememberPassword) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Prossing Data'),
                                ),
                              );
                              login();
                            } else if (!rememberPassword) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Please agree of processing  of personal information')));
                            }
                          },
                          child: Text('Sign In')),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.7,
                          color: Colors.grey.withAlpha(1),
                        )),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          child: Text(
                            'Sign up with',
                            style: TextStyle(color: Colors.black45),
                          ),
                        ),
                        Expanded(child: Divider())
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(FontAwesomeIcons.facebookF, color: Colors.blue),
                        FaIcon(FontAwesomeIcons.google),
                        FaIcon(FontAwesomeIcons.apple)
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    // don't have an account
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'You have an account? ',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (e) => const SignUpScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
