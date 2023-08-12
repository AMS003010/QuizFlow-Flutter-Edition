import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/first_icon1.png",
            width: 200,
          ),
          const SizedBox(height: 100),
          Text(
            "Lets Play a Quizzzzz!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 181, 181, 181),
              fontSize: 25
            )
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 107, 54, 255)
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            )
            )
        ],
      ),
    );
  }
}
