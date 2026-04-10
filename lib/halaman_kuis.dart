import 'package:flutter/material.dart';
import 'package:mini_project/kuis_percakapan.dart';
import 'package:mini_project/kuis_verb.dart';

class HalamanKuis extends StatelessWidget {
  const HalamanKuis({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20, offset: const Offset(0, 4))],
        ),
        child: Scaffold(
          // appBar: AppBar(title: const Text('Quiz Arena 🚀')),
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
                          'Panduan Singkat!',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF3949AB)),
                        ),
                        SizedBox(height: 25),
                        Text(
                          '1. Pilih salah satu kategori quiz di bawah.\n2. Baca pertanyaan/pernyataan di dalam quiz dengan teliti.\n3. Tentukan apakah itu benar (True) atau salah (False).',
                          style: TextStyle(fontSize: 16, color: Color(0xFF546E7A)),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Selamat berlatih!',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF3949AB)),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Choose Your Challenge',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF3949AB)),
                  ),
                  const SizedBox(height: 25),

                  CardTemplate(
                    nama: 'Verb Challenge',
                    tujuan: const KuisVerb(),
                    kiri: const Icon(Icons.book, color: Colors.blueAccent),
                  ),
                  const SizedBox(height: 10),
                  CardTemplate(
                    nama: 'Conversation Challenge',
                    tujuan: const KuisPercakapan(),
                    kiri: const Icon(Icons.forum, color: Colors.blueAccent),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      child: const Text(
                        '← Back to Home',
                        style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600, fontSize: 16),
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

class CardTemplate extends StatelessWidget {
  final Icon kiri;
  final String nama;
  final Widget tujuan;
  const CardTemplate({super.key, required this.nama, required this.tujuan, required this.kiri});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.blue.shade50),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: const Color(0xFFE3F2FD), borderRadius: BorderRadius.circular(12)),
          child: kiri,
        ),
        title: Text(
          nama,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2D3142)),
        ),
        trailing: const Icon(Icons.arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => tujuan));
        },
      ),
    );
  }
}
