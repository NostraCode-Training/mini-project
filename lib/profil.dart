import 'package:flutter/material.dart';
import 'package:mini_project/halaman_aboutUs.dart';
import 'package:mini_project/halaman_kuis.dart';
import 'package:mini_project/home_conversation.dart';
import 'package:mini_project/home_verb.dart';
import 'package:mini_project/liastu.dart';

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
                        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjj0q2cmXdPOc_zOyYOt52g8NGcLV7LqqjM5JrhQuPPdyYT9HjFGe7JR2mNUs1vAfJmi_KQKzs7b-CyA14BnEGKvyT5tSvbzkR6sVfu_gehocOaxIiAktiPB-1oofJbffBybrKJ-qi4_i4/s640/Lisa-BLACKPINK.png',
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Izzahtul Mahdiyah', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Age : 19', style: TextStyle(color: Colors.grey)),
                        Text('Andalas University', style: TextStyle(color: Colors.purple)),
                        Text(
                          'English Learning Course ✨',
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
                  const Text('6 Of 6 lessons completed', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text("My Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Progress(
              title: 'Conversation',
              progress: 10,
              color: Colors.blue,
              tujuan: const Conversation(),
              icon: Icons.record_voice_over,
              teks: Text('3 of 3 lessons completed', style: TextStyle(color: Colors.grey)),
            ),
            Progress(
              title: 'Vocabulary',
              progress: 10,
              color: Colors.orange,
              tujuan: const Verb(),
              icon: Icons.auto_stories_rounded,
              teks: Text('3 of 3 lessons completed', style: TextStyle(color: Colors.grey)),
            ),
            Progress(
              title: 'Quiz',
              progress: 10,
              color: Colors.cyanAccent,
              tujuan: HalamanKuis(),
              icon: Icons.spellcheck_rounded,
              teks: Text('2 of 2 lessons completed', style: TextStyle(color: Colors.grey)),
            ),
            // Letakkan ini di dalam Column atau ListView di halaman Profile kamu
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.blue[100], shape: BoxShape.circle),
                  child: Icon(Icons.groups_rounded, color: Colors.blue[800]),
                ),
                title: Text('About Us', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Kenali tim dibalik English Learning Course'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16), // Tanda panah ke kanan
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
