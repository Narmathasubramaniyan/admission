import 'package:admission/pages/admission_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Admission page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdmissionPage()),
                );
              },
              child: const Text('Admission'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to See List page
                // Replace with navigation logic for See List page
              },
              child: const Text('See List'),
            ),
          ],
        ),
      ),
    );
  }
}
