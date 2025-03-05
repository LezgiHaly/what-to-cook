import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_to_cook/components/custom_bottom_bar.dart';
import 'package:what_to_cook/views/home/home.dart';

import '../../../blocs/blocs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeBloc>().state is DarkThemeState;
    print('HomeScreen: isDark = $isDark');

    return Scaffold(
      appBar: AppBar(
        title: const Text('What to Cook'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Selected Index: $_selectedIndex'),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36), // Закругленные углы
        ),
        onPressed: () {
          // Действие при нажатии на FAB
        },
        child: Image.asset('assets/icons/icChef.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
