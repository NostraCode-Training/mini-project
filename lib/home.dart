import 'package:flutter/material.dart';
import 'package:mini_project/daily_tips.dart';
import 'package:mini_project/home_conversation.dart';
import 'package:mini_project/home_verb.dart';
import 'package:mini_project/halaman_kuis.dart';
import 'package:mini_project/timetable.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 450),
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]),
        child: Scaffold(
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
                            SizedBox(height: 10),
                            Text('Hai! izzahtul 🙌', style: TextStyle(color: Colors.grey)),
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
                        Text('6 of 6 lessons completed', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.event_note, size: 48, color: Colors.orange),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'YOUR WEEKLY STUDY PLAN',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.orange),
                              ),
                              Text(
                                'Check your recommended learning schedule',
                                style: TextStyle(fontSize: 12, color: Colors.black54),
                              ),
                              Center(
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [BoxShadow(color: Colors.black.withAlpha(10), blurRadius: 5)],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Jadwal()));
                                    },
                                    child: Text(
                                      'VIEW TIMETABLE',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.orange[800],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                      kursusApa(context, "Daily English Tips ✨"),
                    ],
                  ),
                ],
              ),
            ),
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
                : judul == "Quiz"
                ? Icons.spellcheck_rounded
                : Icons.tips_and_updates,

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
          } else if (judul == "Daily English Tips ✨") {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const Tips()));
          }
        },
      ),
    ),
  );
}

final List<Widget> page = [HalamanKuis()];
