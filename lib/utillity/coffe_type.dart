import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeetype;
  final bool isSelected;
  final Widget pages;

  CoffeeType(
      {required this.coffeetype,
      required this.isSelected,
      required this.pages});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => pages));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              coffeetype,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.orange : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
