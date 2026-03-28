import 'package:flutter/material.dart';

class KuisVerb extends StatelessWidget {
  const KuisVerb({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]),
        child: Scaffold(
          backgroundColor: const Color(0xFFEBF5FB),
          appBar: AppBar(
            title: const Text('Quiz Conversation', style: TextStyle(fontWeight: FontWeight.bold)),
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 450),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    kolom("Bentuk Verb 2 dari kata kerja 'Eat' adalah 'Eaten'."),
                    const SizedBox(height: 35),
                    kolom("Kata kerja 'Go' memiliki bentuk Verb 2 'Went' dan Verb 3 'Gone'"),
                    const SizedBox(height: 35),
                    kolom("Bentuk Verb 3 dari 'Study' adalah 'Studying'."),
                    const SizedBox(height: 35),
                    kolom("Kata kerja 'Drink' berubah menjadi 'Drank' pada Verb 2 dan 'Drunk' pada Verb 3."),
                    const SizedBox(height: 35),
                    kolom("Verb 2 dari 'Write' adalah 'Written'."),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('← Back to Home', style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget kolom(String text) {
    return Column(
      children: [
        Container(
          width: 500,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue.shade100, width: 2),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.blueGrey, height: 1.4),
          ),
        ),
        const SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [kotak("BENAR"), const SizedBox(width: 15), kotak("SALAH")],
        ),
      ],
    );
  }

  Widget kotak(String tomboll) {
    return Container(
      width: 120,
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue.shade200, width: 1.5),
      ),
      child: Center(
        child: Text(
          tomboll,
          style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
