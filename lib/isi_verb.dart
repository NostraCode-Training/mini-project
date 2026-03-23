import 'package:flutter/material.dart';
import 'package:mini_project/home_conversation.dart';
import 'package:mini_project/home_verb.dart';

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

    return Scaffold(
      appBar: AppBar(title: Text('Verb 1')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Verb 1 (Present Tense)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(height: 10),
                    const Text(
                      "Verb 1 merupakan bentuk kata kerja dasar dalam bahasa Inggris. Bentuk ini digunakan untuk menunjukkan bahwa suatu perbuatan adalah sebuah fakta, kebiasaan, atau rutinitas yang dilakukan secara berulang.\n\n"
                      "Kegunaan utamanya adalah menceritakan aktivitas keseharian seperti jadwal kegiatan, hobi, atau agenda yang dilakukan secara reguler.",
                    ),
                    const Divider(height: 50),

                    const Text(
                      "1. Jenis Kata Kerja Verb 1",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                    const Text('Tabel contoh Verb 1:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 10),

                    Table(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columnWidths: const {0: FixedColumnWidth(100), 1: FlexColumnWidth()},
                      children: [
                        const TableRow(
                          decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("Verb 1", style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("Arti", style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),

                        for (var item in verbList)
                          TableRow(
                            children: [
                              Padding(padding: const EdgeInsets.all(8), child: Text(item.keys.first)),
                              Padding(padding: const EdgeInsets.all(8), child: Text(item.values.first)),
                            ],
                          ),
                      ],
                    ),

                    const Divider(height: 30),
                    const Text("2. Rumus Cara Bicara", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 10),
                    const Text(
                      "Dalam percakapan mengenai keseharian, susunannya sangat sederhana dan efisien. Cukup letakkan Verb 1 tepat setelah subjek.",
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "[ Subjek + Verb 1 (s/es) + Keterangan ]",
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Urutannya adalah Subjek (orang yang melakukan) diikuti oleh Verb 1, kemudian keterangan tambahan atau waktu untuk memperjelas rutinitas tersebut.\n\n"
                      "Contoh:\n"
                      "• I wake up early every day.\n"
                      "• She cooks lunch for the family.\n"
                      "• We clean the room every weekend.\n"
                      "• The train arrives at 8 AM.",
                    ),
                    const Divider(height: 30),

                    const Text(
                      "3. Penanda Waktu (Time Signals)",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Agar lawan bicara mengerti bahwa hal yang kamu bicarakan adalah sebuah kebiasaan atau rutinitas tetap, gunakan kata-kata penanda frekuensi di bawah ini:\n"
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

            const SizedBox(height: 20),

            // Tombol Selesai
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text("Tandai sebagai Selesai ✓"),
              ),
            ),
            const SizedBox(height: 10),

            // Tombol Next
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Kerja2()));
                },
                child: const Text("Pelajaran Selanjutnya → "),
              ),
            ),
            const SizedBox(height: 30),
          ],
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
      {"Slept": "Tidur"},
      {"Came": "Datang"},
      {"Said": "Berkata"},
      {"Made": "Membuat"},
      {"Wrote": "Menulis"},
      {"Read": "Membaca"},
      {"Spoke": "Berbicara"},
      {"Felt": "Merasa"},
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Verb 2')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Apa itu Verb 2?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(height: 10),
                    const Text(
                      "Verb 2 merupakan bentuk kata kerja masa lalu dalam bahasa Inggris. Bentuk ini menunjukkan bahwa suatu perbuatan sudah selesai dilakukan sebelum saat ini.\n\n"
                      "Kegunaan utama Verb 2 adalah menceritakan peristiwa yang terjadi pada waktu lampau. Kamu menggunakannya saat berbicara tentang kejadian tadi pagi, kemarin, minggu lalu, atau masa kecil.\n\n"
                      "Ciri utama penggunaan Verb 2 adalah langsung meletakkan kata kerja tersebut setelah subjek tanpa tambahan kata bantu lain.",
                    ),
                    const Divider(height: 30),
                    const Text(
                      "1. Jenis Kata Kerja Verb 2",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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

                    // Tabel Irregular Verbs
                    Table(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columnWidths: const {0: FixedColumnWidth(80), 1: FlexColumnWidth()},
                      children: [
                        const TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("Verb 2", style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("Arti", style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        ...verbList.map(
                          (item) => TableRow(
                            children: [
                              Padding(padding: EdgeInsets.all(8), child: Text(item.keys.first)),
                              Padding(padding: EdgeInsets.all(8), child: Text(item.values.first)),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const Divider(height: 30),
                    const Text("2. Rumus Cara Bicara", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 5),
                    const Text(
                      "[ Subjek + Verb 2 + Keterangan Waktu ]",
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Kamu hanya perlu meletakkan subjek di depan kata kerja tersebut. Keterangan waktu sangat penting untuk menunjukkan bahwa kejadian itu sudah lewat.\n\n"
                      "Contoh:\n"
                      "• I went to the market yesterday.\n"
                      "• I ate bread this morning.\n"
                      "• She came to my house yesterday.\n"
                      "• We saw a movie two days ago.",
                    ),
                    const Divider(height: 30),
                    const Text(
                      "3. Penanda Waktu (Time Signals)",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text("Tandai sebagai Selesai ✓"),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Kerja3()));
                },
                child: const Text("Pelajaran Selanjutnya → "),
              ),
            ),
          ],
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

    return Scaffold(
      appBar: AppBar(title: Text('Verb 3')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Apa itu Verb 3?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(height: 10),
                    const Text(
                      "Verb 3 adalah bentuk kata kerja ketiga dalam bahasa Inggris.\n"
                      " Berbeda dengan Verb 2 yang berdiri sendiri untuk menceritakan masa lalu,\n"
                      " Verb 3 biasanya membutuhkan kata bantu (auxiliary verb) seperti have, has, atau had agar kalimatnya sempurna.",
                    ),
                    Divider(height: 30),
                    Text("1. Jenis Kata Kerja Verb 3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 10),
                    Text(
                      "Regular Verbs (Beraturan)\n"
                      "Kabar baiknya, bentuknya sama persis dengan Verb 2, yaitu cukup ditambah -ed atau -d di belakang kata.\n"
                      "• Play -> Played\n"
                      "• Watch -> Watched\n"
                      "• Cook -> Cooked",
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Irregular Verbs (Tidak Beraturan)\n"
                      "Ini yang perlu dihafal karena perubahannya bisa sangat berbeda dari bentuk aslinya atau bentuk Verb 2-nya:",
                    ),
                    const SizedBox(height: 10),

                    // Tabel Irregular Verbs
                    Table(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columnWidths: const {0: FixedColumnWidth(80), 1: FlexColumnWidth()},
                      children: [
                        const TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("Verb 3", style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("Arti", style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        ...verbList.map(
                          (item) => TableRow(
                            children: [
                              Padding(padding: EdgeInsets.all(8), child: Text(item.keys.first)),
                              Padding(padding: EdgeInsets.all(8), child: Text(item.values.first)),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Divider(height: 30),
                    Text("2. Rumus Cara Bicara", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 5),
                    Text(
                      "[ Subjek + Have/Has + Verb 3 + Keterangan ]",
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Jika Verb 2 langsung diletakkan setelah subjek, Verb 3 butuh jembatan yaitu have atau has.\n"
                      "Have digunakan untuk subjek: I, You, We, They.\n"
                      "Has digunakan untuk subjek: She, He, It.\n"
                      "Contoh:\n\n"
                      "• I have finished my homework_(Saya telah menyelesaikan pekerjaan rumah saya)\n"
                      "• She has visited Paris twice_(Dia telah mengunjungi Paris dua kali)\n"
                      "• They have already eaten their lunch_(Mereka sudah makan siang)\n"
                      "• He has bought a new laptop_(Dia telah membeli laptop baru)",
                    ),
                    const Divider(height: 30),
                    const Text(
                      "3. Penanda Waktu (Time Signals)",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Penanda waktu untuk Verb 3 (dalam bentuk Perfect Tense) agak berbeda dengan Verb 2 yang spesifik seperti yesterday atau ago. Verb 3 sering menggunakan:\n\n"
                      "•	Just: Baru saja (Mirip dengan just now ).\n"
                      "•	Yet: Belum (untuk kalimat negatif).\n"
                      "•	Ever: Pernah\n"
                      "•	Since: Sejak",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Verb()));
                },
                child: const Text('Selesai ✓ & keluar'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Conversation()));
                },
                child: const Text('Next Course'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
