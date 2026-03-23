import 'package:flutter/material.dart';
import 'package:mini_project/home.dart';
import 'package:mini_project/profil.dart';

// Variabel untuk menyimpan posisi halaman yang aktif
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
        // ValueListenableBuilder = untuk perubahan pada _indexNotifier
        body: ValueListenableBuilder<int>(
          valueListenable: _indexNotifier,
          builder: (context, index, child) {
            final List<Widget> pages = [
              const Home(),
              const Profil(),
              // const Center(child: Text("Halaman Profile"))
            ];
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
