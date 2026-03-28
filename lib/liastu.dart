import 'package:flutter/material.dart';

class Listu extends StatelessWidget {
  final String nama;
  final Widget tujuan;
  const Listu({super.key, required this.nama, required this.tujuan});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(Icons.book, color: Colors.blue),
        title: Text(nama),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => tujuan));
        },
      ),
    );
  }
}

class Progress extends StatelessWidget {
  final String title;
  final double progress;
  final Color color;
  final Widget tujuan;
  final IconData icon;
  final Text teks;

  const Progress({
    super.key,
    required this.title,
    required this.progress,
    required this.color,
    required this.tujuan,
    required this.icon,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => tujuan));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon, color: color, size: 20),
                const SizedBox(width: 10),
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Spacer(),
                Text(
                  "${(progress * 10).toInt()}%",
                  style: TextStyle(color: color, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(color),
                minHeight: 6,
              ),
            ),
            teks,
          ],
        ),
      ),
    );
  }
}
