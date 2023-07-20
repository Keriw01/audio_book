import 'package:flutter/material.dart';

class BottomNavigationCustom extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  const BottomNavigationCustom(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: -8, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "Kategorie"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books), label: "Biblioteka"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profil"),
            ],
            currentIndex: selectedIndex,
            onTap: onItemTapped,
          ),
        ));
  }
}
