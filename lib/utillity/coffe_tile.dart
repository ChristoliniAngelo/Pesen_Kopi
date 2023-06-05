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
      padding: const EdgeInsets.only(left: 25, bottom: 20),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
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
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(hargakopi),
                      ],
                    ),
                  ),
                  Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(gambarkopi)))),
                ],
              ),
            ),
            //harga
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.shopping_cart_outlined)),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.favorite_outline_outlined))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
