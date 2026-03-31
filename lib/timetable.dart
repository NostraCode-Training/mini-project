import 'package:flutter/material.dart';

class Jadwal extends StatelessWidget {
  const Jadwal({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 450),
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('WEEKLY STUDY TIMETABLE', style: TextStyle(color: Colors.white)),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: const Color(0xFFB2EBF2), width: 2),
                    ),
                    child: Text(
                      'Setiap lingkaran di bawah ini adalah satu langkah lebih dekat menuju kemahiran. Mari selesaikan tantangan minggu ini dengan penuh semangat!',
                    ),
                  ),
                  const SizedBox(height: 30),
                  item("SENIN", "Hari Kosakata", "Fokus: Verb 1 & Regular", Icons.circle, Colors.blue),
                  item("SELASA", "Latihan Percakapan", "Fokus: Rutinitas Harian", Icons.circle, Colors.blue),
                  item("RABU", "Pendalaman Tata Bahasa", "Fokus: Verb 2 & 3", Icons.circle, Colors.blue),
                  item("KAMIS", "Kuis & Review", "Fokus: Tantangan Verb", Icons.circle, Colors.blue),
                  item("JUMAT", "Penerapan Percakapan", "Fokus: Pengalaman Masa Lalu", Icons.circle, Colors.blue),
                  item("SABTU", "Tips & Belajar Seru", "Fokus: Catatan Ringkas", Icons.circle, Colors.blue),
                  item("MINGGU", "Review Total", "Persiapan untuk minggu depan!", Icons.emoji_events, Colors.orange),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget item(String hari, String fokus, String aktivitas, IconData ikon, Color warna) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Column(
        children: [
          Icon(ikon, color: warna, size: 20),
          Container(width: 2, height: 50, color: Colors.blue.shade100),
        ],
      ),
      const SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hari, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(
            aktivitas,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.lightBlue),
          ),
          Text(fokus, style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.black.withAlpha(10), blurRadius: 5)],
            ),
            child: Text('✔️ comletad'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ],
  );
}
