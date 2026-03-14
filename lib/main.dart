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
            ],
          ),
        ),
      ),
    );
  }
}
