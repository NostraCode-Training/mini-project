import 'package:flutter/material.dart';

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
              // ... (sisanya tetap sama)
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

Widget kursusApa(BuildContext context, String judul) {
  return Card(
    margin: const EdgeInsets.only(bottom: 15),
    child: ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(8)),

        child: Icon(judul == "Vocabulary" ? Icons.book : Icons.message, color: Colors.blueAccent),
      ),

      title: Text(judul, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),

      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanDetail(judulMateri: judul)));
      },
    ),
  );
}

class HalamanDetail extends StatelessWidget {
  final String judulMateri;

  const HalamanDetail({super.key, required this.judulMateri});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learn $judulMateri")),
      body: judulMateri == "Vocabulary" ? const Verb() : const Conversation(),
    );
  }
}

class Verb extends StatelessWidget {
  const Verb({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
              Column(children: [lesson(context, 'Verb1'), lesson(context, 'Verb2')]),
              Column(children: [lesson(context, 'Verb3')]),
            ],
          ),
        ),
      ),
    );
  }
}

Widget lesson(BuildContext context, String kelas) {
  return Card(
    margin: const EdgeInsets.only(bottom: 15),
    child: ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(8)),

        child: Icon(
          kelas == "Verb 1" ? Icons.book : (kelas == "Verb 2" ? Icons.menu_book : Icons.book_online_sharp),
          color: Colors.blueAccent,
        ),
      ),

      title: Text(kelas, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),

      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Lessondetail(judulkelas: kelas)));
      },
    ),
  );
}

class Lessondetail extends StatelessWidget {
  final String judulkelas;
  const Lessondetail({super.key, required this.judulkelas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn $judulkelas')),
      body: judulkelas == "Verb 1" ? const Kerja1() : (judulkelas == "Verb 2" ? const Kerja2() : const Kerja3()),
    );
  }
}

class Kerja1 extends StatelessWidget {
  const Kerja1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Kerja2 extends StatelessWidget {
  const Kerja2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Kerja3 extends StatelessWidget {
  const Kerja3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Conversation extends StatelessWidget {
  const Conversation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
