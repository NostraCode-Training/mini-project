import 'package:flutter/material.dart';
import 'package:mini_project/liastu.dart';

final ValueNotifier<int> _indexNotifier = ValueNotifier<int>(0);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning English Cours',

      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: ValueListenableBuilder<int>(
          valueListenable: _indexNotifier,
          builder: (context, index, child) {
            final List<Widget> pages = [const Home(), const Profil(), const Center(child: Text("Halaman Profile"))];
            return pages[index];
          },
        ),

        bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: _indexNotifier,
          builder: (context, index, child) {
            return BottomNavigationBar(
              currentIndex: index,

              backgroundColor: Colors.white,
              selectedItemColor: Colors.blueAccent,
              unselectedItemColor: Colors.blue[100],
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              type: BottomNavigationBarType.fixed, // Agar posisi tetap tenang/stabil
              // --------------------------------
              onTap: (val) => _indexNotifier.value = val,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profile'),
              ],
            );
          },
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F8FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.dashboard_rounded, color: Colors.blueAccent),
        title: const Text(
          ' Learning App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF3F51B5)),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.notification_add, color: Colors.blueAccent),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to the basic English class',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFF2D3142)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(color: Colors.black.withAlpha(10), blurRadius: 5)],
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.local_fire_department_sharp, color: Colors.orangeAccent),
                        SizedBox(width: 5),
                        Icon(Icons.emoji_events_outlined, color: Color.fromARGB(255, 20, 217, 36)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.blue.shade100, width: 2),
                  boxShadow: [
                    BoxShadow(color: Colors.blueAccent.withAlpha(20), blurRadius: 20, offset: const Offset(0, 10)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Progress',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
                        ),
                        Text(
                          '100%',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 100,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        backgroundColor: Color(0xFFE8F5E9),
                        minHeight: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Hi, What would you learn today?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2D3142)),
              ),
              const SizedBox(height: 15),

              Column(children: [kursusApa(context, "Vocabulary"), kursusApa(context, "Conversation")]),
            ],
          ),
        ),
      ),
    );
  }
}

Widget kursusApa(BuildContext context, String judul) {
  return Card(
    margin: const EdgeInsets.only(bottom: 15),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(color: Colors.blue.shade50),
    ),
    child: Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: const Color(0xFFE3F2FD), borderRadius: BorderRadius.circular(15)),
          child: Icon(
            judul == "Vocabulary" ? Icons.auto_stories_rounded : Icons.forum_rounded,

            color: const Color(0xFF1976D2),
          ),
        ),
        title: Text(
          judul,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2D3142)),
        ),

        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14, color: Colors.blue),
        onTap: () {
          if (judul == "Vocabulary") {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const Verb()));
          } else if (judul == "Conversation") {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const Conversation()));
          }
        },
      ),
    ),
  );
}

class Verb extends StatelessWidget {
  const Verb({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF0F8FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              Container(
                width: screenWidth,
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
    );
  }
}

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

class Conversation extends StatelessWidget {
  const Conversation({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF0F8FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              Container(
                width: screenWidth,
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
                      "What is Conversation? 💬",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF3949AB)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Conversation adalah kegiatan interaksi verbal atau tulisan antara dua orang atau lebih untuk bertukar ide, informasi, atau perasaan. Di sini, kita akan menerapkan Verb 1, 2, dan 3 ke dalam dialog sehari-hari.",
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

              Listu(nama: 'Daily Routine (Verb 1)', tujuan: const Percakapan1()),
              const SizedBox(height: 12),
              Listu(nama: 'Past Experience (Verb 2)', tujuan: const Percakapan2()),
              const SizedBox(height: 12),
              Listu(nama: 'Finished Task (Verb 3)', tujuan: const Percakapan3()),

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
    );
  }
}

class Percakapan1 extends StatelessWidget {
  const Percakapan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lern Daily Routine (verb 1)')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
              child: Padding(
                padding: const EdgeInsetsGeometry.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '1. Kapan Digunakan (When to Use)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Verb 1 Digunakan untuk.\n\n'
                      '• Kebiasaan (Habit): Digunakan untuk membahas kegiatan yang dilakukan secara rutin atau berulang-ulang.\n  Contoh: I wake up at 5 AM.\n\n'
                      '• Fakta Umum: Digunakan untuk menyatakan kebenaran umum atau hal yang tetap benar saat ini.\n  Contoh: The sun rises in the east.\n\n'
                      '• Percakapan Langsung: Bentuk ini muncul saat membicarakan jadwal atau rutinitas harian kepada orang lain.\n  Contoh:\n  Toni: "What time does the movie start?" (Jam berapa filmnya mulai?)\n  Rani: "The movie starts at 7 PM tonight." (Filmnya mulai jam 7 malam ini)',
                    ),
                    const Divider(height: 40),
                    const Text(
                      '2. Aturan Penting Kata Do/Does',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Aturan utama dalam kalimat masa kini adalah penggunaan kata bantu Do atau Does.\n\n'
                      '• Verb 1 Murni: Digunakan di kalimat positif untuk subjek I, You, We, They.\n'
                      '• Kalimat Negatif: Ada "Do/Does not", maka kata kerja kembali ke Verb 1 dasar.\n'
                      '• Kalimat Tanya: Jika ada "Do/Does", kata kerja tetap menggunakan Verb 1 dasar.\n'
                      '• Penekanan: Jika sudah ada Do/Does, tidak boleh ada akhiran -s/-es pada kata kerja.',
                    ),
                    const Divider(height: 40),
                    const Text(
                      '3. Merespon Pernyataan (Statement)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Dalam percakapan santai, jika lawan bicara memberikan pernyataan tentang kebiasaannya, tidak perlu menjawab Yes/No.\n'
                      'Cukup balas dengan informasi tambahan menggunakan Verb 1 untuk menceritakan rutinitas diri sendiri.\n\n'
                      'Contoh:\n'
                      'Toni: I usually drink coffee in the morning.\n'
                      'Rani: I prefer tea for my breakfast.',
                    ),
                    const Divider(height: 40),
                    const Text(
                      '4. Menjawab Pertanyaan (Do/Does)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Jika lawan bicara bertanya menggunakan "Do" atau "Does", gunakan pola konfirmasi:\n\n'
                      '• Jawaban (+): Yes + informasi lengkap dengan Verb 1.\n\n  Contoh: "Yes, I eat bread every day."\n\n'
                      '• Jawaban (-): No + pola Do/Does not + Verb 1 dasar.\n\n 	Contoh: "No, I do not like spicy food."\n\n'
                      '• Konfirmasi Cepat: Gunakan "Yes, I do" atau "No, I don\'t" untuk jawaban singkat.',
                    ),
                    const Divider(height: 40),
                    const Text(
                      '5. Contoh Percakapan (Examples)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '• Penggunaan Do (I/You/We/They):\n\n   Toni: "Do you work here?"\n   Jawaban (+): "Yes, I work here every day."\n   Jawaban (-): "No, I do not work here."\n\n'
                      '• Penggunaan Does (He/She/It):\n\n   Toni: "Does she like spicy food?"\n   Jawaban (+): "No, she does not like spicy food."\n   Jawaban (-): "Yes, she likes spicy food.")\n\n'
                      '• Merespon Pernyataan (Tanpa Yes/No):\n   Toni: "I usually drink coffee in the morning."\n   Rani: "I prefer tea for my breakfast."',
                    ),
                  ],
                ),
              ),
            ),
            // isi materi
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Percakapan2()));
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

class Percakapan2 extends StatelessWidget {
  const Percakapan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Past Task (Verb 2)')),
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
                    const Text(
                      '1. Kapan Digunakan (When to Use)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Verb 2 digunakan untuk menyatakan tindakan yang sudah selesai di masa lalu.\n\n'
                      '• Kejadian Spesifik: Waktunya jelas (yesterday, last week).\n'
                      '• Kebiasaan Masa Lalu: Dulu dilakukan, sekarang tidak lagi.\n'
                      '• Cerita/Narasi: Muncul saat menceritakan urutan kejadian atau memberikan jawaban positif (Yes).',
                    ),
                    const Divider(height: 40),

                    // --- BAGIAN 2 ---
                    const Text(
                      '2. Aturan Penting Kata Did',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Aturan utama dalam kalimat masa lalu adalah penggunaan kata bantu Did.\n\n'
                      '• Kalimat Positif: Langsung menggunakan Verb 2.\n'
                      '• Kalimat Negatif: Ada "Did not/Didn\'t", maka Verb 2 kembali ke Verb 1.\n'
                      '• Kalimat Tanya: Dimulai dengan "Did", maka Verb 2 kembali ke Verb 1.\n'
                      '• Penekanan: Jika sudah ada kata DID, tidak boleh pakai Verb 2 lagi.',
                    ),
                    const Divider(height: 40),

                    const Text(
                      '3. Merespon Pernyataan (Statement)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Dalam percakapan, tidak semua kalimat butuh jawaban konfirmasi (Yes/No).\n'
                      'Jika lawan bicara bercerita, cukup balas dengan informasi tambahan menggunakan Verb 2 untuk menceritakan kegiatan Anda sendiri.\n\n'
                      'Contoh:\n'
                      'Toni: I saw you yesterday at the park.\n'
                      'Rani: Oh really? I walked there with my sister.',
                    ),
                    const Divider(height: 40),

                    const Text(
                      '4. Menjawab Pertanyaan (Did)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Jika lawan bicara bertanya menggunakan "Did", gunakan pola konfirmasi:\n\n'
                      '• Jawaban (+): Yes + informasi lengkap pakai Verb 2.\n'
                      '• Jawaban (-): No + pola Did not + kembali ke Verb 1.\n'
                      '• Konfirmasi Cepat: Gunakan "Yes, I did" atau "No, I didn\'t".',
                    ),
                    const Divider(height: 40),

                    const Text(
                      '5. Contoh Percakapan (Examples)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Percakapan3()));
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

class Percakapan3 extends StatelessWidget {
  const Percakapan3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('finished Task (verb 3)')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. Kapan Digunakan (When to Use)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Verb 3 digunakan untuk menyatakan tindakan yang sudah selesai dilakukan atau kejadian yang memiliki hubungan dengan masa sekarang.\n\n'
                      "• Kejadian yang Baru Saja Selesai (Present Perfect): Digunakan untuk membahas sesuatu yang sudah terjadi dan hasilnya masih terasa atau penting saat ini.\n"
                      ""
                      "o Contoh: I have finished my homework\n\n"
                      "• Pengalaman Hidup: Menyatakan hal yang pernah atau belum pernah dilakukan seumur hidup tanpa menyebutkan waktu spesifik.\n"
                      "o Contoh: She has visited Bali three times.\n\n"
                      "• Kalimat Pasif (Passive Voice): Digunakan ketika subjek dikenai tindakan, bukan melakukan tindakan.\n"
                      "o Contoh: The cake was eaten by my brother.",
                    ),
                    Divider(height: 40),
                    Text(
                      '2. Aturan Penting Kata Have / Has',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Aturan utama dalam menggunakan Verb 3 pada kalimat masa kini (Present Perfect) adalah penggunaan kata bantu Have atau Has.\n\n'
                      '• Have (untuk I, You, We, They): Digunakan dalam kalimat positif, negatif, dan tanya.\n'
                      '• Has (untuk He, She, It): Digunakan untuk subjek tunggal orang ketiga.\n'
                      '• Bentuk Tetap: Berbeda dengan Verb 1, dalam kalimat tanya atau negatif, kata kerja tetap menggunakan Verb 3 (tidak kembali ke bentuk dasar).\n'
                      '• Penekanan Utama: Verb 3 selalu berpasangan dengan Have/Has/Had atau To Be (am/is/are/was/were). Tidak bisa berdiri sendiri sebagai kata kerja utama tanpa pendamping.',
                    ),
                    Divider(height: 40),
                    Text('3. Contoh Penggunaan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 10),
                    Text(
                      '• Have (untuk I/You/We/They):\n'
                      'o "They have gone to London." (Bukan: They have go)\n\n'
                      '• Has (untuk He/She/It):\n'
                      'o "Has he taken his medicine?" (Bukan: Has he take?)',
                    ),
                    Divider(height: 40),
                    Text(
                      '4. Merespon Pernyataan (Statement)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Dalam percakapan santai tentang pengalaman atau hal yang sudah dilakukan:\n'
                      'Jika lawan bicara memberikan pernyataan tentang apa yang sudah mereka lakukan, Anda bisa merespon dengan memberikan informasi tambahan menggunakan Have/Has + Verb 3 untuk membandingkan pengalaman Anda.\n\n'
                      'Contoh\n'
                      'o Toni: I have watched that movie twice.\n'
                      'o Rani: Really? I havent seen it yet.',
                    ),
                    Divider(height: 39),
                    Text(
                      '5. Menjawab Pertanyaan (Have/Has)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Jika lawan bicara bertanya menggunakan kata Have atau Has, gunakan pola konfirmasi berikut:\n\n'
                      '• Jawaban Positif: Gunakan Yes diikuti informasi lengkap dengan Have/Has + Verb 3.\n'
                      'o Contoh: "Yes, I have cleaned the room.\n\n'
                      '• Jawaban Negatif: Gunakan No diikuti pola Have not (Havent) / Has not (Hasnt) dan tetap gunakan Verb 3.\n'
                      'o Contoh: No, she hasnt called me.\n\n'
                      '• Konfirmasi Cepat: Gunakan "Yes, I have" atau "No, I havent untuk jawaban singkat.',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: const Text('Selesai ✓ & keluar'),
              ),
            ),
          ],
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

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('Your Profile', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.favorite, color: Colors.pinkAccent),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // KOTAK PROFIL
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.pink[50]!),
                boxShadow: [BoxShadow(color: Colors.purple[50]!, blurRadius: 15)],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.pink[100],
                    child: const CircleAvatar(
                      radius: 41,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://instagram.fbdo9-1.fna.fbcdn.net/v/t51.82787-19/539287142_18325279573234466_5395290407969283045_n.jpg?efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fbdo9-1.fna.fbcdn.net&_nc_cat=102&_nc_oc=Q6cZ2gFFmKGEHtYYJkucYzbWxN0FoduI1h9rVxEyQ9ZZXdz-7HR6mHrz9Y9600l9M4SsUH9aElws5X2HGk1D847G5-BO&_nc_ohc=iqrmUK6hhFEQ7kNvwFBtYxZ&_nc_gid=N654RoLnf8dMlgVqZUJNcA&edm=ALGbJPMBAAAA&ccb=7-5&oh=00_AfzS4VCxdp86tC5s6z3uWTM-eZOZ2mh5NRW9fnSI4MimZA&oe=69C14C49&_nc_sid=7d3ac5',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Izzahtul Mahdiyah', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Age : 19', style: TextStyle(color: Colors.grey)),
                        Text('Andalas University', style: TextStyle(color: Colors.purple)),
                        Text(
                          'Learning English Course ✨',
                          style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            const Text("Overall Progress", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),

            // KOTAK PROGRESS
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue[50]!),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Learning Path', style: TextStyle(fontWeight: FontWeight.w500)),
                      Text(
                        '100%',
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: 1.0,
                      backgroundColor: Colors.blue[50],
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                      minHeight: 10,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('6 Of 6 lesson completed', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text("My Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Progress(
              title: 'Conversetion',
              progress: 10,
              color: Colors.blue,
              tujuan: const Conversation(),
              icon: Icons.record_voice_over,
            ),
            Progress(
              title: 'Vocabulry',
              progress: 10,
              color: Colors.orange,
              tujuan: const Verb(),
              icon: Icons.auto_stories_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
