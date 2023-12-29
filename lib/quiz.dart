import 'package:flutter/material.dart';
import 'package:quiz1/suggestions.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Map<String, dynamic>> questions = [
    {
      'question': "1. I found it hard to wind down",
      'options': {
        'a': 1,
        'b': 2,
        'c': 3,
        'd': 4,
      },
      'selectedOption': 0,
    },
    {
      'question': "2. I was aware of dryness of my mouth",
      'options': {
        'a': 1,
        'b': 2,
        'c': 3,
        'd': 4,
      },
      'selectedOption': 0,
    },
    {
      'question': "3. I couldn’t seem to experience any positive feeling at all",
      'options': {
        'a': 1,
        'b': 2,
        'c': 3,
        'd': 4,
      },
      'selectedOption': 0,
    },
    {
      'question': "4. I experienced breathing difficulty (e.g. excessively rapid breathing, breathlessness in the absence of physical exertion)",
      'options': {
        'a': 1,
        'b': 2,
        'c': 3,
        'd': 4,
      },
      'selectedOption': 0,
    },
        {
      'question': "5. I found it difficult to work up the initiative to do things",
      'options': {
        'a': 1,
        'b': 2,
        'c': 3,
        'd': 4,
      },
      'selectedOption': 0,
    },

    {
      'question': "6. I tended to over-react to situations",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },

         {
      'question': "7. I experienced trembling (e.g. in the hands)",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "8. I felt that I was using a lot of nervous energy",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "9. I was worried about situations in which I might panic and make a fool of myself",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "10. I found it difficult to work up the initiative to do things",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "11. I found myself getting agitated",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "12. I found it difficult to relax",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "13. I felt down-hearted and blue",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "14. I was intolerant of anything that kept me from getting on with what I was doing",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "15. I felt I was close to panic",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "16. I was unable to become enthusiastic about anything",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "17. I felt that life was meaningless",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "18. I felt I wasn’t worth much as a person",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "19. I felt that I was rather touchy",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },
    {
      'question': "20. I was aware of the action of my heart in the absence of physical exertion (e.g. sense of heart rate increase, heart missing a beat)",
      'options': {'a': 0, 'b': 1, 'c': 2, 'd': 3},
      'selectedOption': 0,
    },

  ];

  List<int> selectedOptions = [];
  int questionIndex = 0;

  void _selectOption(String option) {
    int value = questions[questionIndex]['options'][option];
    setState(() {
      questions[questionIndex]['selectedOption'] = value;
    });
  }

  int calculateSum() {
    int score = 0;
    for (var question in questions) {
      if (question['selectedOption'] != null) {
        score += question['selectedOption'] as int;
      }
    }
    return score;
  }

  String getDepressionLevel(int score) {
    if (score >= 0 && score <= 9) {
      return "Normal";
    } else if (score >= 10 && score <= 13) {
      return "Mild";
    } else if (score >= 14 && score <= 20) {
      return "Moderate";
    } else if (score >= 21 && score <= 27) {
      return "Severe";
    } else {
      return "Extremely Severe";
    }
  }

  String getAnxietyLevel(int score) {
    if (score >= 0 && score <= 7) {
      return "Normal";
    } else if (score >= 8 && score <= 9) {
      return "Mild";
    } else if (score >= 10 && score <= 14) {
      return "Moderate";
    } else if (score >= 15 && score <= 19) {
      return "Severe";
    } else {
      return "Extremely Severe";
    }
  }

  String getStressLevel(int score) {
    if (score >= 0 && score <= 14) {
      return "Normal";
    } else if (score >= 15 && score <= 18) {
      return "Mild";
    } else if (score >= 19 && score <= 25) {
      return "Moderate";
    } else if (score >= 26 && score <= 33) {
      return "Severe";
    } else {
      return "Extremely Severe";
    }
  }

  void _nextQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz (DASS-21)'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(questions[questionIndex]['question'].toString()),
          ElevatedButton(
            onPressed: () => _selectOption('a'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(getButtonColor('a')),
            ),
            child: Text('a) Never'),
          ),
          ElevatedButton(
            onPressed: () => _selectOption('b'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(getButtonColor('b')),
            ),
            child: Text('b) Rarely'),
          ),
          ElevatedButton(
            onPressed: () => _selectOption('c'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(getButtonColor('c')),
            ),
            child: Text('c) Sometimes'),
          ),
          ElevatedButton(
            onPressed: () => _selectOption('d'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(getButtonColor('d')),
            ),
            child: Text('d) Often'),
          ),
          SizedBox(height: 20),
          if (questionIndex < questions.length - 1)
            ElevatedButton(
              onPressed: _nextQuestion,
              child: Text('Next Question'),
            ),
          if (questionIndex == questions.length - 1)
            ElevatedButton(
              onPressed: () {
                int score = calculateSum();
                String depressionLevel = getDepressionLevel(score);
                String anxietyLevel = getAnxietyLevel(score);
                String stressLevel = getStressLevel(score);

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Result'),
                      content: Column(
                        children: [
                          Text('Depression Level: $depressionLevel'),
                          Text('Anxiety Level: $anxietyLevel'),
                          Text('Stress Level: $stressLevel'),
                        ],
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>  SuggestionsScreen(),
                            ));},
                          child: Text('Suggestions'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Get Result'),
            ),
        ],
      ),
    );
  }

  Color getButtonColor(String option) {
    int selectedOption = questions[questionIndex]['selectedOption'];
    int optionValue = questions[questionIndex]['options'][option];
    if (selectedOption != 0 && optionValue == selectedOption) {
      return Colors.red;
    }
    return Colors.blue; // Default color
  }
}

void main() {
  runApp(MaterialApp(
    home: QuizPage(),
  ));
}
