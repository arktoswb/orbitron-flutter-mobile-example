import 'package:flutter/material.dart';

class FontShowcaseScreen extends StatelessWidget {
  const FontShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'Orbitron Showcase',
          style: TextStyle(
            fontFamily: 'Orbitron',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.cyan),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitleSection(),
            const SizedBox(height: 20),
            _buildAlphabetShowcase(),
            const SizedBox(height: 20),
            _buildNumberShowcase(),
            const SizedBox(height: 20),
            _buildSpecialCharactersShowcase(),
            const SizedBox(height: 20),
            _buildSizeVariations(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleSection() {
    return const Center(
      child: Text(
        'ORBITRON FONT\nSHOWCASE',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Orbitron',
          fontSize: 32,
          fontWeight: FontWeight.w900,
          color: Colors.cyan,
          letterSpacing: 3.0,
          height: 1.2,
        ),
      ),
    );
  }

  Widget _buildAlphabetShowcase() {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ALPHABET:',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 1.0,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'abcdefghijklmnopqrstuvwxyz',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white70,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNumberShowcase() {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'NUMBERS:',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '0123456789',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecialCharactersShowcase() {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'SPECIAL CHARACTERS:',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '!@#\$%^&*()_+-=[]{}|;:,.<>?',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSizeVariations() {
    final sizes = [12.0, 14.0, 16.0, 18.0, 20.0, 24.0, 28.0, 32.0];
    
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'SIZE VARIATIONS:',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 12),
            ...sizes.map((size) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                'ORBITRON ${size.toInt()}pt',
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: size,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}