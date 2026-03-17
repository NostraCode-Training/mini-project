import 'package:flutter/material.dart';
import 'package:mini_project/liastu.dart';

// 1. Variabel Global untuk menyimpan indeks yang aktif
final ValueNotifier<int> _indexNotifier = ValueNotifier<int>(0);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // 2. ValueListenableBuilder memantau perubahan indeks
        body: ValueListenableBuilder<int>(
          valueListenable: _indexNotifier,
          builder: (context, index, child) {
            // Daftar halaman
            final List<Widget> pages = [
              const Home(),
              const Center(child: Text("Halaman Courses")),
              const Center(child: Text("Halaman Profile")),
            ];
            return pages[index];
          },
        ),

        // 3. BottomNavigationBar di posisi paling bawah
        bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: _indexNotifier,
          builder: (context, index, child) {
            return BottomNavigationBar(
              currentIndex: index,
              selectedItemColor: Colors.green,
              onTap: (val) => _indexNotifier.value = val,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              ],
            );
          },
        ),
      ),
    );
  }
}

// Halaman Home kamu (tetap Stateless)
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.dashboard),
        title: const Text(' Learning App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        centerTitle: true,
        actions: const [Icon(Icons.notification_add)],
      ),
      // Ubah bagian body di dalam kelas Home menjadi seperti ini:
      body: SingleChildScrollView(
        // 1. Tambahkan ini agar bisa scroll ke bawah
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 2. Bungkus kolom teks dengan Expanded
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome to the basic English class,',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(height: 10),
                        const Text('Hai!! Andrian 🙌', style: TextStyle(color: Colors.grey, fontSize: 17)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10), // Jarak antara teks dan ikon
                  const Row(
                    children: [
                      Icon(Icons.local_fire_department_sharp, color: Colors.orangeAccent),
                      SizedBox(width: 10),
                      Icon(Icons.emoji_events_outlined, color: Color.fromARGB(255, 20, 217, 36)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey[200]!),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Progress'), Text('0%')],
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        minHeight: 10,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text('0 of 15 lessons completed', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Hi, What would you learn today?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              Column(children: [kursusApa(context, "Vocabulary"), kursusApa(context, "Conversation")]),
            ],
          ),
        ),
      ),
    );
  }
}

class Verb extends StatelessWidget {
  const Verb({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("What are Verbs??", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                      "Verb atau kata kerja adalah bagian paling penting dalam kalimat yang menunjukkan tindakan, perbuatan, atau keadaan. Dalam bahasa Inggris, kata kerja memiliki peran utama sebagai inti dari apa yang dilakukan oleh subjek. ",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Berikut adalah gambaran umum mengenai pembagian kata kerja : ',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("hai! What will you study first?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Column(children: [kursusApa(context, 'Verb 1'), kursusApa(context, 'Verb 2')]),
              Column(children: [kursusApa(context, 'Verb 3')]),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
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
    child: ListTile(
      leading: Icon(judul.contains("Verb") ? Icons.book : Icons.message, color: Colors.blueAccent),
      title: Text(judul, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // Logika Navigasi yang benar
        if (judul == "Vocabulary") {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const Verb()));
        } else if (judul == "Conversation") {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const Conversation()));
        } else if (judul.contains("Verb")) {
          // Menuju ke detail khusus Verb
          Navigator.push(context, MaterialPageRoute(builder: (_) => HalamanDetailVerb(judulMateri: judul)));
        } else {
          // Menuju ke detail khusus Conversation
          // Navigator.push(context, MaterialPageRoute(builder: (_) => HalamanDetailConversation(judulMateri: judul)));
        }
      },
    ),
  );
}

class HalamanDetailVerb extends StatelessWidget {
  final String judulMateri;
  final ValueNotifier<int> _stepNotifier = ValueNotifier<int>(1);

  HalamanDetailVerb({super.key, required this.judulMateri});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(judulMateri)),
      body: ValueListenableBuilder<int>(
        valueListenable: _stepNotifier,
        builder: (context, step, _) {
          if (step == 1) return Kerja1(onNext: () => _stepNotifier.value++);
          if (step == 2) return Kerja2(onNext: () => _stepNotifier.value++);
          return Kerja3(onNext: () => Navigator.pop(context));
        },
      ),
    );
  }
}

// class HalamanDetailConversation extends StatelessWidget {
//   final String judulMateri;
//   final ValueNotifier<int> _stepNotifier = ValueNotifier<int>(1);

//   HalamanDetailConversation({super.key, required this.judulMateri});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(judulMateri)),
//       body: ValueListenableBuilder<int>(
//         valueListenable: _stepNotifier,
//         builder: (context, step, _) {
//           if (step == 1) return Percakapan1(onNext: () => _stepNotifier.value++);
//           if (step == 2) return Percakapan2(onNext: () => _stepNotifier.value++);
//           return Percakapan3(onNext: () => Navigator.pop(context));
//         },
//       ),
//     );
//   }
// }

class Kerja1 extends StatelessWidget {
  final VoidCallback onNext;
  const Kerja1({super.key, required this.onNext});

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

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
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

                  const Text("1. Jenis Kata Kerja Verb 1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
            child: OutlinedButton(onPressed: onNext, child: const Text("Pelajaran Selanjutnya →")),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class Kerja2 extends StatelessWidget {
  final VoidCallback onNext;
  const Kerja2({super.key, required this.onNext});

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

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
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
                  const Text("1. Jenis Kata Kerja Verb 2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
                    "Subjek + Verb 2 + Keterangan Waktu",
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
            child: OutlinedButton(onPressed: onNext, child: const Text("Pelajaran Selanjutnya → ")),
          ),
        ],
      ),
    );
  }
}

class Kerja3 extends StatelessWidget {
  final VoidCallback onNext;
  const Kerja3({super.key, required this.onNext});

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

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
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
                  Text("Apa itu Verb 3?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 10),
                  Text(
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
                    "Subjek + Have/Has + Verb 3 + Keterangan",
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
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
              onPressed: onNext,
              child: const Text("Selesai & Keluar ✓"),
            ),
          ),
        ],
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kartu Penjelasan
              Container(
                width: screenWidth,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("What is Conversation?", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                      "Conversation adalah kegiatan interaksi verbal (bicara) atau tulisan antara dua orang atau lebih untuk bertukar ide, informasi, atau perasaan. Di sini, kita akan menerapkan Verb 1, 2, dan 3 ke dalam dialog sehari-hari agar kamu lebih mahir.",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Hi! Ready to practice?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),

              // Menu Latihan Conversation
              Listu(nama: 'Daily Routine (verb 1)', tujuan: Percakapan1()),
              Listu(nama: 'Past Experience (verb 2)', tujuan: Percakapan2()),
              Listu(nama: 'fininshed Task (verb 3)', tujuan: Percakapan3()),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
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
      body: Column(
        children: [
          // isi materi
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Percakapan2()));
              },
              child: const Text("Pelajaran Selanjutnya → "),
            ),
          ),
        ],
      ),
    );
  }
}

class Percakapan2 extends StatelessWidget {
  const Percakapan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lern Past Experience (verb 2)')),
      body: Column(
        children: [
          // isi materi
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Percakapan3()));
              },
              child: const Text("Pelajaran Selanjutnya → "),
            ),
          ),
        ],
      ),
    );
  }
}

class Percakapan3 extends StatelessWidget {
  const Percakapan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('fininshed Task (verb 3)')),
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
                      "•	Kejadian yang Baru Saja Selesai (Present Perfect): Digunakan untuk membahas sesuatu yang sudah terjadi dan hasilnya masih terasa atau penting saat ini.\n"
                      ""
                      "o	Contoh: I have finished my homework\n\n"
                      "•	Pengalaman Hidup: Menyatakan hal yang pernah atau belum pernah dilakukan seumur hidup tanpa menyebutkan waktu spesifik.\n"
                      "o	Contoh: She has visited Bali three times.\n\n"
                      "•	Kalimat Pasif (Passive Voice): Digunakan ketika subjek dikenai tindakan, bukan melakukan tindakan.\n"
                      "o	Contoh: The cake was eaten by my brother.",
                    ),
                    Divider(height: 40),
                    Text(
                      '2. Aturan Penting Kata Have / Has',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Aturan utama dalam menggunakan Verb 3 pada kalimat masa kini (Present Perfect) adalah penggunaan kata bantu Have atau Has.\n\n'
                      '•	Have (untuk I, You, We, They): Digunakan dalam kalimat positif, negatif, dan tanya.\n'
                      '•	Has (untuk He, She, It): Digunakan untuk subjek tunggal orang ketiga.\n'
                      '•	Bentuk Tetap: Berbeda dengan Verb 1, dalam kalimat tanya atau negatif, kata kerja tetap menggunakan Verb 3 (tidak kembali ke bentuk dasar).\n'
                      '•	Penekanan Utama: Verb 3 selalu berpasangan dengan Have/Has/Had atau To Be (am/is/are/was/were). Tidak bisa berdiri sendiri sebagai kata kerja utama tanpa pendamping.',
                    ),
                    Divider(height: 40),
                    Text('3. Contoh Penggunaan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 10),
                    Text(
                      '•	Have (untuk I/You/We/They):\n'
                      'o	"They have gone to London." (Bukan: They have go)\n\n'
                      '•	Has (untuk He/She/It):\n'
                      'o	"Has he taken his medicine?" (Bukan: Has he take?)',
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
                      'o	Toni: I have watched that movie twice.\n'
                      'o	Rani: Really? I havent seen it yet.',
                    ),
                    Divider(height: 39),
                    Text(
                      '5. Menjawab Pertanyaan (Have/Has)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Jika lawan bicara bertanya menggunakan kata Have atau Has, gunakan pola konfirmasi berikut:\n\n'
                      '•	Jawaban Positif: Gunakan Yes diikuti informasi lengkap dengan Have/Has + Verb 3.\n'
                      'o	Contoh: "Yes, I have cleaned the room.\n\n'
                      '•	Jawaban Negatif: Gunakan No diikuti pola Have not (Havent) / Has not (Hasnt) dan tetap gunakan Verb 3.\n'
                      'o	Contoh: No, she hasnt called me.\n\n'
                      '•	Konfirmasi Cepat: Gunakan "Yes, I have" atau "No, I havent untuk jawaban singkat.',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Conversation()));
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
