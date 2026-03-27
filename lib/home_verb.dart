import 'package:flutter/material.dart';
import 'package:mini_project/isi_verb.dart';
import 'package:mini_project/liastu.dart';

class Verb extends StatelessWidget {
  const Verb({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20, offset: const Offset(0, 4))],
        ),
        child: Scaffold(
          backgroundColor: const Color(0xFFF0F8FF),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: const Color(0xFFB2EBF2), width: 2),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What is Verb? ✨",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF3949AB)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Verb atau kata kerja adalah bagian paling penting dalam kalimat yang menunjukkan tindakan, perbuatan, atau keadaan. Dalam bahasa Inggris, kata kerja memiliki peran utama sebagai inti dari apa yang dilakukan oleh subjek. ",
                          style: TextStyle(fontSize: 16, color: Color(0xFF546E7A)),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Hi! Ready to practice? 🚀",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                  ),
                  const SizedBox(height: 15),

                  Listu(nama: 'Verb 1 (Present)', tujuan: const Kerja1()),
                  const SizedBox(height: 12),
                  Listu(nama: 'Verb 2 (Past)', tujuan: const Kerja2()),
                  const SizedBox(height: 12),
                  Listu(nama: 'Verb 3 (Perfect)', tujuan: const Kerja3()),

                  const SizedBox(height: 20),

                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        '← Back to Home',
                        style: TextStyle(color: Color(0xFF448AFF), fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
