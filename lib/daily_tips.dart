import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 450),
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]),
        child: Scaffold(
          backgroundColor: const Color(0xFFF3F8FF),
          appBar: AppBar(
            title: const Text(
              'Daily English Tips ✨',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 10)],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kenapa Harus Ada Tips? 🤔",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Mempelajari bahasa Inggris lewat materi saja tidak cukup. Tips singkat ini memberikan 'cheat sheet' instan agar kamu lebih cepat paham pola-pola yang sering muncul di dunia nyata!",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                const Row(
                  children: [
                    Icon(Icons.stars_rounded, color: Colors.orange),
                    SizedBox(width: 10),
                    Text("Verb Mastery Tips 📚", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      card(
                        "Verb",
                        "Past Tense",
                        "Verb 2 hanya untuk masa lalu. Jangan pakai 'did' bersamaan dengan Verb 2!",
                        Icons.history,
                        Colors.orange,
                      ),
                      card(
                        "Verb",
                        "Irregular",
                        "Tidak semua verb ditambah 'ed'. Contoh: Go -> Went, Eat -> Ate.",
                        Icons.warning_rounded,
                        Colors.orange,
                      ),
                      card(
                        "Verb",
                        "Verb 3",
                        "Gunakan Verb 3 setelah 'Have/Has' untuk kegiatan yang sudah selesai.",
                        Icons.check_circle,
                        Colors.orange,
                      ),
                      card(
                        "Verb",
                        "Singular S",
                        "Untuk He/She/It di Present Tense, tambahkan 's/es' pada Verb 1.",
                        Icons.exposure_plus_1,
                        Colors.orange,
                      ),
                      card(
                        "Verb",
                        "Continuous",
                        "Verb-ing butuh 'To Be'. Jangan 'I eating', tapi 'I am eating'.",
                        Icons.loop,
                        Colors.orange,
                      ),
                      card(
                        "Verb",
                        "Infinitive",
                        "Setelah kata 'To', kata kerja harus kembali ke bentuk dasar (Verb 1).",
                        Icons.push_pin,
                        Colors.orange,
                      ),
                      card(
                        "Verb",
                        "Passive",
                        "Kalimat pasif pakai To Be + Verb 3. Contoh: 'The book was read'.",
                        Icons.architecture,
                        Colors.orange,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.stars_rounded, color: Colors.blueAccent),
                    SizedBox(width: 10),
                    Text("Conversation Guide 💬", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      card(
                        "Speaking",
                        "Greeting",
                        "Gunakan 'How's it going?' sebagai alternatif 'How are you?'.",
                        Icons.waving_hand,
                        Colors.blueAccent,
                      ),
                      card(
                        "Speaking",
                        "Fillers",
                        "Gunakan 'Well...' atau 'Actually...' untuk jeda berpikir.",
                        Icons.hourglass_empty,
                        Colors.blueAccent,
                      ),
                      card(
                        "Speaking",
                        "Agreement",
                        "Coba bilang 'Exactly!' atau 'I feel the same way' daripada 'I agree'.",
                        Icons.thumb_up_alt,
                        Colors.blueAccent,
                      ),
                      card(
                        "Speaking",
                        "Clarify",
                        "Jika kurang dengar, katakan 'Sorry, could you repeat that?'.",
                        Icons.record_voice_over,
                        Colors.blueAccent,
                      ),
                      card(
                        "speaking",
                        "Closing",
                        "Akhiri obrolan dengan 'It was nice talking to you'.",
                        Icons.exit_to_app,
                        Colors.blueAccent,
                      ),
                      card(
                        "Speaking",
                        "Confidence",
                        "Kontak mata penting! Ini menunjukkan kamu fokus pada lawan bicara.",
                        Icons.visibility,
                        Colors.blueAccent,
                      ),
                      card(
                        "Speaking",
                        "Slang",
                        "Gunakan 'Gonna' atau 'Wanna' hanya dalam situasi santai.",
                        Icons.forum,
                        Colors.blueAccent,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget card(String kategori, String judul, String isi, IconData icon, Color warna) {
  return Container(
    width: 250,
    height: 250,
    margin: const EdgeInsets.only(right: 15),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: warna, width: 2),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, size: 50, color: warna),
        const SizedBox(height: 15),
        Text(
          judul,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: warna),
        ),
        const SizedBox(height: 10),
        Text(
          isi,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13, color: Colors.black54, height: 1.4),
        ),
        const Spacer(),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(color: warna, borderRadius: BorderRadius.circular(8)),
          child: Text(
            kategori,
            style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
