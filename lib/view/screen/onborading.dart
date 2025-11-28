import 'package:flutter/material.dart';
import 'package:heshamonganrateroute/content/approute.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const Text(
                '!مرحباً بك',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Approute.home,
                    arguments: {'username': 'heshamaqlan'},
                  );
                },
                child: const Text('ابدأ الآن'),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.amber),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
