import 'package:flutter/material.dart';
import 'package:mini_project/halaman_kuis.dart';

class Percakapan1 extends StatelessWidget {
  const Percakapan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        child: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            title: const Text(
              'Learn Daily Routine (Verb 1)',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue[300],
            centerTitle: true,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue[100]!, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. Kapan Digunakan (When to Use)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Verb 1 Digunakan untuk.\n\n'
                          '• Kebiasaan (Habit): Digunakan untuk membahas kegiatan yang dilakukan secara rutin atau berulang-ulang.\n  Contoh: I wake up at 5 AM.\n\n'
                          '• Fakta Umum: Digunakan untuk menyatakan kebenaran umum atau hal yang tetap benar saat ini.\n  Contoh: The sun rises in the east.\n\n'
                          '• Percakapan Langsung: Bentuk ini muncul saat membicarakan jadwal atau rutinitas harian kepada orang lain.\n  Contoh:\n  Toni: "What time does the movie start?" (Jam berapa filmnya mulai?)\n  Rani: "The movie starts at 7 PM tonight." (Filmnya mulai jam 7 malam ini)',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '2. Aturan Penting Kata Do/Does',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Aturan utama dalam kalimat masa kini adalah penggunaan kata bantu Do atau Does.\n\n'
                          '• Verb 1 Murni: Digunakan di kalimat positif untuk subjek I, You, We, They.\n'
                          '• Kalimat Negatif: Ada "Do/Does not", maka kata kerja kembali ke Verb 1 dasar.\n'
                          '• Kalimat Tanya: Jika ada "Do/Does", kata kerja tetap menggunakan Verb 1 dasar.\n'
                          '• Penekanan: Jika sudah ada Do/Does, tidak boleh ada akhiran -s/-es pada kata kerja.',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '3. Merespon Pernyataan (Statement)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Dalam percakapan santai, jika lawan bicara memberikan pernyataan tentang kebiasaannya, tidak perlu menjawab Yes/No.\n'
                          'Cukup balas dengan informasi tambahan menggunakan Verb 1 untuk menceritakan rutinitas diri sendiri.\n\n'
                          'Contoh:\n'
                          'Toni: I usually drink coffee in the morning.\n'
                          'Rani: I prefer tea for my breakfast.',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '4. Menjawab Pertanyaan (Do/Does)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Jika lawan bicara bertanya menggunakan "Do" atau "Does", gunakan pola konfirmasi:\n\n'
                          '• Jawaban (+): Yes + informasi lengkap dengan Verb 1.\n  Contoh: "Yes, I eat bread every day."\n\n'
                          '• Jawaban (-): No + pola Do/Does not + Verb 1 dasar.\n   Contoh: "No, I do not like spicy food."\n\n'
                          '• Konfirmasi Cepat: Gunakan "Yes, I do" atau "No, I don\'t" untuk jawaban singkat.',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '5. Contoh Percakapan (Examples)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '• Penggunaan Do (I/You/We/They):\n  Toni: "Do you work here?"\n  Jawaban (+): "Yes, I work here every day."\n  Jawaban (-): "No, I do not work here."\n\n'
                          '• Penggunaan Does (He/She/It):\n  Toni: "Does she like spicy food?"\n  Jawaban (+): "No, she does not like spicy food."\n  Jawaban (-): "Yes, she likes spicy food."\n\n'
                          '• Merespon Pernyataan (Tanpa Yes/No):\n  Toni: "I usually drink coffee in the morning."\n  Rani: "I prefer tea for my breakfast."',
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Tandai sebagai Selesai ✓",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue.shade200, width: 2),
                      foregroundColor: Colors.blue.shade700,
                      backgroundColor: Colors.blue.shade50,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Percakapan2()));
                    },
                    child: const Text(
                      "Pelajaran Selanjutnya →",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Percakapan2 extends StatelessWidget {
  const Percakapan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        child: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            title: const Text(
              'Past Task (Verb 2)',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue[300],
            centerTitle: true,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue[100]!, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. Kapan Digunakan (When to Use)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Verb 2 digunakan untuk menyatakan tindakan yang sudah selesai di masa lalu.\n\n'
                          '• Kejadian Spesifik: Waktunya jelas (yesterday, last week).\n'
                          '• Kebiasaan Masa Lalu: Dulu dilakukan, sekarang tidak lagi.\n'
                          '• Cerita/Narasi: Muncul saat menceritakan urutan kejadian atau memberikan jawaban positif (Yes).',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '2. Aturan Penting Kata Did',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Aturan utama dalam kalimat masa lalu adalah penggunaan kata bantu Did.\n\n'
                          '• Kalimat Positif: Langsung menggunakan Verb 2.\n'
                          '• Kalimat Negatif: Ada "Did not/Didn\'t", maka Verb 2 kembali ke Verb 1.\n'
                          '• Kalimat Tanya: Dimulai dengan "Did", maka Verb 2 kembali ke Verb 1.\n'
                          '• Penekanan: Jika sudah ada kata DID, tidak boleh pakai Verb 2 lagi.',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '3. Merespon Pernyataan (Statement)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Dalam percakapan, tidak semua kalimat butuh jawaban konfirmasi (Yes/No).\n'
                          'Jika lawan bicara bercerita, cukup balas dengan informasi tambahan menggunakan Verb 2 untuk menceritakan kegiatan Anda sendiri.\n\n'
                          'Contoh:\n'
                          'Toni: I saw you yesterday at the park.\n'
                          'Rani: Oh really? I walked there with my sister.',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '4. Menjawab Pertanyaan (Did)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Jika lawan bicara bertanya menggunakan "Did", gunakan pola konfirmasi:\n\n'
                          '• Jawaban (+): Yes + informasi lengkap pakai Verb 2.\n'
                          '• Jawaban (-): No + pola Did not + kembali ke Verb 1.\n'
                          '• Konfirmasi Cepat: Gunakan "Yes, I did" atau "No, I didn\'t".',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '5. Contoh Percakapan (Examples)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Tanpa Yes/No (Merespon Cerita):\n'
                          'Toni: I went to the beach.\n'
                          'Rani: Oh, I stayed at home.\n\n'
                          'Dengan Yes/No (Menjawab Pertanyaan):\n'
                          'Toni: Did you buy some snacks?\n'
                          'Rani: Yes, we bought some bread.\n'
                          'Toni: Did you buy chocolate?\n'
                          'Rani: No, I did not buy it.',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Tandai sebagai Selesai ✓",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue.shade200, width: 2),
                      foregroundColor: Colors.blue.shade700,
                      backgroundColor: Colors.blue.shade50,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Percakapan3()));
                    },
                    child: const Text("Pelajaran Selanjutnya →", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Percakapan3 extends StatelessWidget {
  const Percakapan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        child: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            title: const Text(
              'Finished Task (Verb 3)',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue[300],
            centerTitle: true,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue[100]!, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. Kapan Digunakan (When to Use)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Verb 3 digunakan untuk menyatakan tindakan yang sudah selesai dilakukan atau kejadian yang memiliki hubungan dengan masa sekarang.\n\n'
                          '• Kejadian yang Baru Saja Selesai (Present Perfect): Digunakan untuk membahas sesuatu yang sudah terjadi dan hasilnya masih terasa atau penting saat ini.\n'
                          '  Contoh: I have finished my homework.\n\n'
                          '• Pengalaman Hidup: Menyatakan hal yang pernah atau belum pernah dilakukan seumur hidup tanpa menyebutkan waktu spesifik.\n'
                          '  Contoh: She has visited Bali three times.\n\n'
                          '• Kalimat Pasif (Passive Voice): Digunakan ketika subjek dikenai tindakan, bukan melakukan tindakan.\n'
                          '  Contoh: The cake was eaten by my brother.',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '2. Aturan Penting Kata Have / Has',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Aturan utama dalam menggunakan Verb 3 pada kalimat masa kini (Present Perfect) adalah penggunaan kata bantu Have atau Has.\n\n'
                          '• Have (untuk I, You, We, They): Digunakan dalam kalimat positif, negatif, dan tanya.\n'
                          '• Has (untuk He, She, It): Digunakan untuk subjek tunggal orang ketiga.\n'
                          '• Bentuk Tetap: Berbeda dengan Verb 1, dalam kalimat tanya atau negatif, kata kerja tetap menggunakan Verb 3 (tidak kembali ke bentuk dasar).\n'
                          '• Penekanan Utama: Verb 3 selalu berpasangan dengan Have/Has/Had atau To Be (am/is/are/was/were). Tidak bisa berdiri sendiri sebagai kata kerja utama tanpa pendamping.',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '3. Contoh Penggunaan',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '• Have (untuk I/You/We/They):\n'
                          '  "They have gone to London." (Bukan: They have go)\n\n'
                          '• Has (untuk He/She/It):\n'
                          '  "Has he taken his medicine?" (Bukan: Has he take?)',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '4. Merespon Pernyataan (Statement)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Dalam percakapan santai tentang pengalaman atau hal yang sudah dilakukan:\n'
                          'Jika lawan bicara memberikan pernyataan tentang apa yang sudah mereka lakukan, Anda bisa merespon dengan memberikan informasi tambahan menggunakan Have/Has + Verb 3 untuk membandingkan pengalaman Anda.\n\n'
                          'Contoh:\n'
                          'o Toni: I have watched that movie twice.\n'
                          'o Rani: Really? I haven\'t seen it yet.',
                        ),
                        Divider(height: 40, color: Colors.blue[50]),
                        Text(
                          '5. Menjawab Pertanyaan (Have/Has)',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue[800]),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Jika lawan bicara bertanya menggunakan kata Have atau Has, gunakan pola konfirmasi berikut:\n\n'
                          '• Jawaban Positif: Gunakan Yes diikuti informasi lengkap dengan Have/Has + Verb 3.\n'
                          '  Contoh: "Yes, I have cleaned the room."\n\n'
                          '• Jawaban Negatif: Gunakan No diikuti pola Have not (Haven\'t) / Has not (Hasn\'t) dan tetap gunakan Verb 3.\n'
                          '  Contoh: "No, she hasn\'t called me."\n\n'
                          '• Konfirmasi Cepat: Gunakan "Yes, I have" atau "No, I haven\'t" untuk jawaban singkat.',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    child: const Text(
                      'Selesai ✓ & keluar',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue.shade200, width: 2),
                      foregroundColor: Colors.blue.shade700,
                      backgroundColor: Colors.blue.shade50,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanKuis()));
                    },
                    child: const Text('Next Course →', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Cours extends StatelessWidget {
//   const Cours({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
