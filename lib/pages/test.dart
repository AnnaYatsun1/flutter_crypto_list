import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TestCrypto extends StatefulWidget {
  const TestCrypto({super.key});

  @override
  State<TestCrypto> createState() => _TestState();
}

class _TestState extends State<TestCrypto> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
