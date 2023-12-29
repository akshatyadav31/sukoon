import 'package:flutter/material.dart';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suggestions'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelScreen(level: 'Normal-Moderate'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: const Text('Normal-Moderate'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelScreen(level: 'Extreme-Severe'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
                primary: Colors.red,
                onPrimary: Colors.white,
              ),
              child: const Text('Extreme-Severe'),
            ),
          ],
        ),
      ),
    );
  }
}

class LevelScreen extends StatelessWidget {
  final String level;

  LevelScreen({required this.level});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(level),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecommendationsPage(level: level),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: const Text('Recommendations'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreventiveMeasuresPage(level: level),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: const Text('Preventive Measures'),
            ),
          ],
        ),
      ),
    );
  }
}

class PreventiveMeasuresPage extends StatelessWidget {
  final String level;

  PreventiveMeasuresPage({required this.level});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preventive Measures'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "This is a paragraph with preventive measures for $level.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class RecommendationsPage extends StatelessWidget {
  final String level;

  RecommendationsPage({required this.level});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommendations'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "This is a paragraph with recommendations for $level.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
