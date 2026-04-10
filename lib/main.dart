import 'package:flutter/material.dart';
import 'package:mini_project/home.dart';
import 'package:mini_project/profil.dart';
import 'package:mini_project/home_verb.dart';
import 'package:mini_project/home_conversation.dart';

final ValueNotifier<int> _indexNotifier = ValueNotifier<int>(0);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning English Course',

      theme: ThemeData(primarySwatch: Colors.blue),

      home: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 450),
          decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20)]),
          child: Scaffold(
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
                  type: BottomNavigationBarType.fixed,
                  onTap: (val) => _indexNotifier.value = val,
                  items: const [
                    BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
                    BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profile'),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

final List<Widget> page = [Home(), Profil(), Verb(), Conversation()];

// class Cours extends StatelessWidget {
//   const Cours({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
