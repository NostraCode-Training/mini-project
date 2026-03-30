import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        color: const Color(0xFFE3F2FD),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.blue[600],
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20),
              onPressed: () => Navigator.pop(context),
            ),
            title: const Text(
              "About Us",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Why This App?",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                    ),
                    const SizedBox(height: 10),
                    templateKartu(
                      Icons.help_outline_rounded,
                      "Banyak yang kesulitan menghafal Verb. Kami hadir mengubah hafalan kaku menjadi pengalaman belajar yang mudah!",
                      Colors.orange,
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Our Vision",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                    ),
                    const SizedBox(height: 10),
                    templateKartu(
                      Icons.visibility_rounded,
                      "Menjadi solusi utama bagi pelajar untuk menguasai verb tanpa merasa bahwa belajar adalah beban.",
                      Colors.blue,
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Our Mission",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                    ),
                    const SizedBox(height: 10),
                    templateKartu(
                      Icons.rocket_launch_rounded,
                      "Menyediakan data Verb dan peubahnya dengan fitur belajar mandiri yang interaktif.",
                      Colors.green,
                    ),

                    const SizedBox(height: 40),

                    const Center(
                      child: Text(
                        "Meet Our Team",
                        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
                      ),
                    ),
                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        templateTim(
                          "Nabilla",
                          "creative crew",
                          "asset/WhatsApp Image 2026-03-29 at 08.05.26.jpeg",
                          false,
                          Colors.blue,
                        ),
                        templateTim(
                          "Vicky",
                          "Project Leader",
                          "asset/WhatsApp Image 2026-03-28 at 19.26.01.jpeg",
                          true,
                          Colors.orange,
                        ),
                        templateTim(
                          "Nadia",
                          "creative crew",
                          "asset/WhatsApp Image 2026-03-30 at 15.22.18.jpeg",
                          false,
                          Colors.blue,
                        ),
                      ],
                    ),

                    const SizedBox(height: 50),

                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFBBDEFB),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          "English Learning Course v1.0",
                          style: TextStyle(fontSize: 11, color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget templateKartu(IconData ikon, String teks, Color warna) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFEEEEEE)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: const Color(0xFFF5F5F5), shape: BoxShape.circle),
            child: Icon(ikon, color: warna, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(teks, style: const TextStyle(fontSize: 13, color: Colors.black87, height: 1.4)),
          ),
        ],
      ),
    );
  }

  Widget templateTim(String nama, String role, String path, bool isLeader, Color warnaBingkai) {
    double ukuranRadius = isLeader ? 38 : 32;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: warnaBingkai, width: 2),
          ),
          child: CircleAvatar(radius: ukuranRadius, backgroundColor: Colors.white, backgroundImage: AssetImage(path)),
        ),
        const SizedBox(height: 10),
        Text(
          nama,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: isLeader ? 14 : 13, color: const Color(0xFF1A237E)),
        ),
        Text(
          role,
          style: TextStyle(fontSize: 10, color: warnaBingkai, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
