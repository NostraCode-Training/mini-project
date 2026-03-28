import 'package:flutter/material.dart';

class KuisPercakapan extends StatelessWidget {
  const KuisPercakapan({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 450),
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]),
        child: Scaffold(
          backgroundColor: const Color(0xFFEBF5FB),
          appBar: AppBar(
            title: const Text('Quiz Conversation', style: TextStyle(fontWeight: FontWeight.bold)),
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 450),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    kolom(
                      "Toni adalah seorang mahasiswa yang sangat disiplin. Setiap pagi tepat jam 5 subuh, dia selalu bangun dan langsung merapikan tempat tidurnya sebelum pergi mandi. Kalimat yang tepat untuk menggambarkan kebiasaan rutin Toni tersebut adalah: 'Toni always wake up at 5 AM every morning.'",
                    ),
                    const SizedBox(height: 35),
                    kolom(
                      "Kemarin sore, Rani dan adiknya pergi ke toko buku untuk membeli beberapa perlengkapan sekolah. Saat sedang melihat-lihat, Rani ditemukan buku novel favoritnya yang sudah lama ia cari. Kalimat yang benar untuk menceritakan kejadian Rani menemukan buku itu kemarin adalah: 'Rani find her favorite novel at the bookstore yesterday.'",
                    ),
                    const SizedBox(height: 35),
                    kolom(
                      "Budi baru saja meletakkan sapunya setelah membersihkan seluruh ruang tamu karena ibunya akan segera pulang dari pasar. Dia ingin memberitahu ibunya bahwa tugasnya sudah selesai dilakukan. Kalimat yang tepat digunakan Budi adalah: 'I have cleaned the living room.'",
                    ),
                    const SizedBox(height: 35),
                    kolom(
                      "Siska sedang berbicara dengan temannya tentang hobi memasak. Siska ingin tahu apakah teman laki-lakinya itu juga suka memasak di akhir pekan. Siska bertanya: 'Does you like to cook on the weekend?'. Apakah susunan kalimat tanya yang digunakan Siska sudah tepat secara grammar?",
                    ),
                    const SizedBox(height: 35),
                    kolom(
                      "Dua hari yang lalu, cuaca sangat mendung dan hujan turun dengan lebat, sehingga Andi memutuskan untuk tetap di rumah dan tidak pergi menonton film di bioskop bersama teman-temannya. Kalimat untuk menyatakan Andi tidak pergi ke bioskop adalah: 'Andi did not went to the cinema two days ago.'",
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            '← Back to Home',
                            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget kolom(String text) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue.shade100, width: 2),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.blueGrey, height: 1.4),
          ),
        ),
        const SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [kotak("BENAR"), const SizedBox(width: 15), kotak("SALAH")],
        ),
      ],
    );
  }

  Widget kotak(String tomboll) {
    return Container(
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue.shade200, width: 1.5),
      ),
      child: Center(
        child: Text(
          tomboll,
          style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
