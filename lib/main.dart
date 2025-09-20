import 'package:flutter/material.dart';
import 'font_showcase.dart';

void main() {
  runApp(const OrbitronFontApp());
}

class OrbitronFontApp extends StatelessWidget {
  const OrbitronFontApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orbitron Font Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OrbitronFontHomePage(title: 'Orbitron Font Showcase'),
    );
  }
}

class OrbitronFontHomePage extends StatefulWidget {
  const OrbitronFontHomePage({super.key, required this.title});

  final String title;

  @override
  State<OrbitronFontHomePage> createState() => _OrbitronFontHomePageState();
}

class _OrbitronFontHomePageState extends State<OrbitronFontHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'Orbitron',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.font_download, color: Colors.cyan),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FontShowcaseScreen(),
                ),
              );
            },
            tooltip: 'Font Showcase',
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'ORBITRON FONT DEMO',
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Colors.cyan,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 30),
              
              // Different font weights showcase
              _buildFontWeightShowcase(),
              
              const SizedBox(height: 30),
              
              const Text(
                'Counter Example:',
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
              ),
              Text(
                '$_counter',
                style: const TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
              const SizedBox(height: 20),
              
              _buildSampleText(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.cyan,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildFontWeightShowcase() {
    final weights = [
      {'weight': FontWeight.w400, 'name': 'Regular'},
      {'weight': FontWeight.w500, 'name': 'Medium'},
      {'weight': FontWeight.w600, 'name': 'SemiBold'},
      {'weight': FontWeight.w700, 'name': 'Bold'},
      {'weight': FontWeight.w800, 'name': 'ExtraBold'},
      {'weight': FontWeight.w900, 'name': 'Black'},
    ];

    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Font Weights:',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 16),
            ...weights.map((weight) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                '${weight['name']} - The quick brown fox',
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 16,
                  fontWeight: weight['weight'] as FontWeight,
                  color: Colors.white,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildSampleText() {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Sample Text:',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.cyan,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'ORBITRON IS A FUTURISTIC FONT',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Perfect for sci-fi and technology themes',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '0123456789',
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.cyan,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}