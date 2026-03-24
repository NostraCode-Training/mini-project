import 'package:flutter/material.dart';
import 'package:mini_project/home_conversation.dart';
import 'package:mini_project/home_verb.dart';

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

              Column(
                children: [
                  kursusApa(context, "Vocabulary"),
                  kursusApa(context, "Conversation"),
                  kursusApa(context, 'Quiz'),
                ],
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
            judul == "Vocabulary"
                ? Icons.auto_stories_rounded
                : judul == "Conversation"
                ? Icons.forum_rounded
                : Icons.spellcheck,

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
          } else if (judul == "Quiz") {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const HalamanKuis()));
          }
        },
      ),
    ),
  );
}

class HalamanKuis extends StatelessWidget {
  const HalamanKuis({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
                      'Panduan Singkat!',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF3949AB)),
                    ),
                    SizedBox(height: 25),
                    Text(
                      '1. Pilih salah satu kategori quiz di bawah.\n2. Baca pertanyaan/pernyataan di dalam quiz dengan teliti.\n3. Tentukan apakah itu benar(True) atau salah(False).',
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

              // listu isi disini
              CardTemplate(
                nama: 'Verb Challenge',
                tujuan: KuisVerb(),
                kiri: Icon(Icons.book, color: Colors.blueAccent),
              ),
              const SizedBox(height: 10),
              CardTemplate(
                nama: 'Conversation Challenge',
                tujuan: KuisPercakapan(),
                kiri: Icon(Icons.forum, color: Colors.blueAccent),
              ),

              const SizedBox(height: 20),

              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
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
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: kiri,
        title: Text(nama),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => tujuan));
        },
      ),
    );
  }
}

class KuisVerb extends StatelessWidget {
  const KuisVerb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Title')),
      body: Column(children: []),
    );
  }
}

class KuisPercakapan extends StatelessWidget {
  const KuisPercakapan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Title')),
      body: Column(children: []),
    );
  }
}
