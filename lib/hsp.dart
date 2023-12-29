import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz1/quiz.dart';
import 'package:quiz1/suggestions.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
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
                    builder: (context) =>  QuizPage(), // Use the correct name of your QuizPage widget
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
                // primary: Colors.blue, // Button color
                // onPrimary: Colors white, // Text color
              ),
              child: const Text('Take a Quiz'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Exit the app
                SystemNavigator.pop();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
                primary: Colors.red, // Button color
                onPrimary: Colors.white, // Text color
              ),
              child: const Text('Exit'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SuggestionsScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
                primary: Colors.red, // Button color
                onPrimary: Colors.white, // Text color
              ),
              child: const Text('More'),
            ),
          ],
        ),
      ),
    );
  }
}
