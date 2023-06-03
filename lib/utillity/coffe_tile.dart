import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String gambarkopi;
  final String namakopi;
  final String deskripsikopi;
  final String hargakopi;

  CoffeeTile({
    required this.gambarkopi,
    required this.hargakopi,
    required this.deskripsikopi,
    required this.namakopi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
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
                  child: Image.asset(gambarkopi)),
            ),
            //deskripsi
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namakopi,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    deskripsikopi,
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            //harga
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(hargakopi),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.add))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
