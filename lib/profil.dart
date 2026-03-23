import 'package:flutter/material.dart';
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
