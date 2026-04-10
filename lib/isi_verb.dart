import 'package:flutter/material.dart';
import 'package:mini_project/home_conversation.dart';

class Kerja1 extends StatelessWidget {
  const Kerja1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> verbList = [
      {"Go": "Pergi"},
      {"Eat": "Makan"},
      {"Drink": "Minum"},
      {"Study": "Belajar"},
      {"Buy": "Membeli"},
      {"Take": "Mengambil"},
      {"Sleep": "Tidur"},
      {"Make": "Membuat"},
      {"Read": "Membaca"},
      {"Speak": "Berbicara"},
    ];

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        child: Scaffold(
          backgroundColor: Colors.blue.shade50,
          appBar: AppBar(
            title: const Text('Verb 1', style: TextStyle(fontWeight: FontWeight.bold)),
            backgroundColor: Colors.blue.shade300,
            foregroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue.shade200, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Verb 1 (Present Tense)",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue.shade800),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Verb 1 merupakan bentuk kata kerja dasar dalam bahasa Inggris. Bentuk ini digunakan untuk menunjukkan bahwa suatu perbuatan adalah sebuah fakta, kebiasaan, atau rutinitas yang dilakukan secara berulang.\n\n"
                          "Kegunaan utamanya adalah menceritakan aktivitas keseharian seperti jadwal kegiatan, hobi, atau agenda yang dilakukan secara reguler.",
                        ),
                        Divider(height: 40, color: Colors.blue.shade100),

                        Text(
                          "1. Jenis Kata Kerja Verb 1",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Ciri utama penggunaan Verb 1 adalah kata kerja ini tetap pada bentuk aslinya, atau mendapatkan tambahan -s/-es jika subjeknya adalah orang ketiga tunggal (He, She, It). Artinya, dalam penggunaannya perlu untuk memperhatikan siapa yang melakukan pekerjaan/aktivitas tersebut agar tidak tertukar:\n',
                        ),
                        const Text(
                          "• Subjek Jamak (I, You, We, They): Kata kerja tetap pada bentuk asli tanpa tambahan apa pun.\n"
                          "  Contoh: I play, We study.\n"
                          "• Subjek Tunggal (He, She, It): Kata kerja harus ditambah akhiran -s atau -es di belakangnya.\n"
                          "  Contoh: She plays, He studies.",
                        ),
                        const SizedBox(height: 20),
                        const Text('Tabel contoh Verb 1:', style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue.shade100),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Table(
                              columnWidths: const {0: FixedColumnWidth(100), 1: FlexColumnWidth()},
                              children: [
                                TableRow(
                                  decoration: BoxDecoration(color: Colors.blue.shade100),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Verb 1", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Arti", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                for (var item in verbList)
                                  TableRow(
                                    children: [
                                      Padding(padding: const EdgeInsets.all(10), child: Text(item.keys.first)),
                                      Padding(padding: const EdgeInsets.all(10), child: Text(item.values.first)),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),

                        Divider(height: 40, color: Colors.blue.shade100),

                        Text(
                          "2. Rumus Cara Bicara",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Dalam percakapan mengenai keseharian, susunannya sangat sederhana dan efisien. Cukup letakkan Verb 1 tepat setelah subjek.",
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "[ Subjek + Verb 1 (s/es) + Keterangan ]",
                            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Contoh:\n"
                          "• I wake up early every day.\n"
                          "• She cooks lunch for the family.\n"
                          "• We clean the room every weekend.\n"
                          "• The train arrives at 8 AM.",
                        ),

                        Divider(height: 40, color: Colors.blue.shade100),

                        Text(
                          "3. Penanda Waktu (Time Signals)",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Agar lawan bicara mengerti bahwa ini adalah kebiasaan tetap, gunakan kata penanda frekuensi:\n"
                          "• Every...: Setiap... (Every day, Every week)\n"
                          "• In the...: Di waktu... (In the morning)\n"
                          "• Always: Selalu\n"
                          "• Usually: Biasanya\n"
                          "• Sometimes: Kadang-kadang",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Kerja2()));
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

class Kerja2 extends StatelessWidget {
  const Kerja2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> verbList = [
      {"Went": "Pergi"},
      {"Ate": "Makan"},
      {"Drank": "Minum"},
      {"Saw": "Melihat"},
      {"Bought": "Membeli"},
      {"Gave": "Memberi"},
      {"Took": "Mengambil"},
    ];

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        child: Scaffold(
          backgroundColor: Colors.blue.shade50,
          appBar: AppBar(
            title: const Text('Verb 2', style: TextStyle(fontWeight: FontWeight.bold)),
            backgroundColor: Colors.blue.shade300,
            foregroundColor: Colors.white,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue.shade200, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Verb 2 (Past Tense)",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue.shade800),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Verb 2 merupakan bentuk kata kerja masa lalu dalam bahasa Inggris. Bentuk ini menunjukkan bahwa suatu perbuatan sudah selesai dilakukan sebelum saat ini.\n\n"
                          "Kegunaan utama Verb 2 adalah menceritakan peristiwa yang terjadi pada waktu lampau. Kamu menggunakannya saat berbicara tentang kejadian tadi pagi, kemarin, minggu lalu, atau masa kecil.\n\n"
                          "Ciri utama penggunaan Verb 2 adalah langsung meletakkan kata kerja tersebut setelah subjek tanpa tambahan kata bantu lain.",
                        ),
                        Divider(height: 40, color: Colors.blue.shade100),

                        Text(
                          "1. Jenis Kata Kerja Verb 2",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Regular Verbs (Beraturan)\n"
                          "Paling mudah diingat karena cukup ditambah ed atau d di belakang kata.\n"
                          "• Play -> Played\n"
                          "• Watch -> Watched\n"
                          "• Cook -> Cooked",
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Irregular Verbs (Tidak Beraturan)\n"
                          "Kata kerja ini berubah bentuk secara total dan harus dihafal karena tidak punya pola tetap:",
                        ),
                        const SizedBox(height: 10),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue.shade100),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Table(
                              columnWidths: const {0: FixedColumnWidth(100), 1: FlexColumnWidth()},
                              children: [
                                TableRow(
                                  decoration: BoxDecoration(color: Colors.blue.shade100),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Verb 2", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Arti", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                for (var item in verbList)
                                  TableRow(
                                    children: [
                                      Padding(padding: const EdgeInsets.all(10), child: Text(item.keys.first)),
                                      Padding(padding: const EdgeInsets.all(10), child: Text(item.values.first)),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),

                        Divider(height: 40, color: Colors.blue.shade100),

                        Text(
                          "2. Rumus Cara Bicara",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "[ Subjek + Verb 2 + Keterangan Waktu ]",
                            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Contoh:\n"
                          "• I went to the market yesterday.\n"
                          "• I ate bread this morning.\n"
                          "• She came to my house yesterday.\n"
                          "• We saw a movie two days ago.",
                        ),

                        Divider(height: 40, color: Colors.blue.shade100),

                        Text(
                          "3. Penanda Waktu (Time Signals)",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "• Yesterday: Kemarin\n"
                          "• Last...: Yang lalu (Last night, Last week)\n"
                          "• ...ago: Yang lalu (Two hours ago)\n"
                          "• This morning: Tadi pagi\n"
                          "• Just now: Baru saja",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Kerja3()));
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

class Kerja3 extends StatelessWidget {
  const Kerja3({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> verbList = [
      {"Gone": "Pergi"},
      {"Eaten": "Makan"},
      {"Drunk": "Minum"},
      {"Seen": "Melihat"},
      {"Written": "Menulis"},
      {"Spoken": "Berbicara"},
    ];

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        child: Scaffold(
          backgroundColor: Colors.blue.shade50,
          appBar: AppBar(
            title: const Text('Verb 3', style: TextStyle(fontWeight: FontWeight.bold)),
            backgroundColor: Colors.blue.shade300,
            foregroundColor: Colors.white,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue.shade200, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Apa itu Verb 3?",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue.shade800),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Verb 3 adalah bentuk kata kerja ketiga dalam bahasa Inggris.\n"
                          " Berbeda dengan Verb 2 yang berdiri sendiri untuk menceritakan masa lalu,\n"
                          " Verb 3 biasanya membutuhkan kata bantu (auxiliary verb) seperti have, has, atau had agar kalimatnya sempurna.",
                        ),
                        Divider(height: 30, color: Colors.blue.shade100),

                        Text(
                          "1. Jenis Kata Kerja Verb 3",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Regular Verbs (Beraturan)\n"
                          "Kabar baiknya, bentuknya sama persis dengan Verb 2, yaitu cukup ditambah -ed atau -d di belakang kata.\n"
                          "• Play -> Played\n"
                          "• Watch -> Watched\n"
                          "• Cook -> Cooked",
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Irregular Verbs (Tidak Beraturan)\n"
                          "Ini yang perlu dihafal karena perubahannya bisa sangat berbeda dari bentuk aslinya atau bentuk Verb 2-nya:",
                        ),
                        const SizedBox(height: 15),

                        // Tabel Irregular Verbs
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue.shade100),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Table(
                              columnWidths: const {0: FixedColumnWidth(100), 1: FlexColumnWidth()},
                              children: [
                                TableRow(
                                  decoration: BoxDecoration(color: Colors.blue.shade100),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Verb 3", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Arti", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                for (var item in verbList)
                                  TableRow(
                                    children: [
                                      Padding(padding: const EdgeInsets.all(10), child: Text(item.keys.first)),
                                      Padding(padding: const EdgeInsets.all(10), child: Text(item.values.first)),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),

                        Divider(height: 30, color: Colors.blue.shade100),

                        Text(
                          "2. Rumus Cara Bicara",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "[ Subjek + Have/Has + Verb 3 + Keterangan ]",
                            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Jika Verb 2 langsung diletakkan setelah subjek, Verb 3 butuh jembatan yaitu have atau has.\n"
                          "Have digunakan untuk subjek: I, You, We, They.\n"
                          "Has digunakan untuk subjek: She, He, It.\n\n"
                          "Contoh:\n\n"
                          "• I have finished my homework (Saya telah menyelesaikan pekerjaan rumah saya)\n"
                          "• She has visited Paris twice (Dia telah mengunjungi Paris dua kali)\n"
                          "• They have already eaten their lunch (Mereka sudah makan siang)\n"
                          "• He has bought a new laptop (Dia telah membeli laptop baru)",
                        ),

                        Divider(height: 30, color: Colors.blue.shade100),

                        Text(
                          "3. Penanda Waktu (Time Signals)",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue.shade700),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Penanda waktu untuk Verb 3 (dalam bentuk Perfect Tense) agak berbeda dengan Verb 2 yang spesifik seperti yesterday atau ago. Verb 3 sering menggunakan:\n\n"
                          "• Just: Baru saja (Mirip dengan just now ).\n"
                          "• Yet: Belum (untuk kalimat negatif).\n"
                          "• Ever: Pernah\n"
                          "• Since: Sejak",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Conversation()));
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
