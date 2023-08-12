import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";
import "package:quiz_app/data/questions.dart";
import "package:google_fonts/google_fonts.dart";

class QuestionsScreen extends  StatefulWidget {
  const QuestionsScreen({super.key,required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionIndex = 0;
  void answerChangeOnClick(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      questionIndex++;
    });
  }
  
  @override
  Widget build(context) {
    final currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container( 
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 169, 160, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              ),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(textBut:answer,onTap:(){
                answerChangeOnClick(answer);
              });
            })
            
          ],
        ),
      ),
    );
  }
}