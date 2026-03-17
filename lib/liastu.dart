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
