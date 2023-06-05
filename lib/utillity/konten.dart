import 'package:flutter/material.dart';

class konten extends StatelessWidget {
  final String gambar;
  final String judul;
  final String deskripsi;

  konten({
    required this.gambar,
    required this.deskripsi,
    required this.judul,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        //gambar kopi
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(gambar)),
            ),
            //deskripsi
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    deskripsi,
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
