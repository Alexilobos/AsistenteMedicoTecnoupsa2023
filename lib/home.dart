import 'package:flutter/material.dart';

import 'personal_date.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ver datos personales'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PersonalDataPage()),
            );
          },
        ),
      ),
    );
  }
}
