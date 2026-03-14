import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Home(), debugShowCheckedModeBanner: false);
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.dashboard),
        title: Text(' Learning App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        centerTitle: true,
        actions: [Icon(Icons.notification_add)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to the basic English class,',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text('Hai!! Andrian 🙌', style: TextStyle(color: Colors.grey, fontSize: 17)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.local_fire_department_sharp, color: Colors.orangeAccent),
                  SizedBox(width: 10),
                  Icon(Icons.emoji_events_outlined, color: const Color.fromARGB(255, 20, 217, 36)),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
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
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Progress'), Text('0%')]),
                SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: 0.0,
                    backgroundColor: Colors.grey[200],
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                    minHeight: 10,
                  ),
                ),
                SizedBox(height: 15),
                Text('0 of 15 lessons completed', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),

          //* untuk mulai bagian tengah dari sini tapi bikin jarak sama yang di atas
        ],
      ),
    );
  }
}
