
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final String? username;
  const HomeView({super.key, this.username});

  @override
  Widget build(BuildContext context) {
    final displayName = username?.isNotEmpty == true ? username! : 'Guest';

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'أهلاً، $displayName 👋',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('رجوع إلى Onboarding'),
            ),
          ],
        ),
      ),
    );
  }
}