// lib/components/custom_bottom_bar.dart

import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(), // Форма выреза под FAB
      notchMargin: 16.0, // Отступ выреза
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => onItemTapped(0),
            color: selectedIndex == 0 ? Colors.blue : Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => onItemTapped(1),
            color: selectedIndex == 1 ? Colors.blue : Colors.grey,
          ),
          SizedBox(width: 48), // Пустое место для FAB
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () => onItemTapped(2),
            color: selectedIndex == 2 ? Colors.blue : Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => onItemTapped(3),
            color: selectedIndex == 3 ? Colors.blue : Colors.grey,
          ),
        ],
      ),
    );
  }
}
