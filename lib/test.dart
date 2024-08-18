import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.blue, child: const Text('hello')),
            Container(color: Colors.redAccent, child: const Text('hello')),
            const Spacer(),
            Container(color: Colors.yellow, child: const Text('hello')),

          ],
        ),
      ),
    );
  }
}
