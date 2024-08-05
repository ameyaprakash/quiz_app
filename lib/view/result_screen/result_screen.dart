import 'package:flutter/material.dart';
import 'package:quiz_app/dummy_db.dart';
import 'package:quiz_app/view/home_screen/home_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightAnswerCount});
  final int rightAnswerCount;
  

  @override
  Widget build(BuildContext context) {
    double percentage = rightAnswerCount * 100/ DummyDb.questions.length;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("$percentage %"),
            TextButton(onPressed: (){Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomeScreen(),
            ),
            );
            },
             child: Text("Restart"))

          ],
        ),
      ),
    );
  }
}