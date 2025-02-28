import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_to_cook/views/home/home.dart';

import '../../../blocs/blocs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to What to Cook!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            ThemeToggleButton(),
          ],
        ),
      ),
    );
  }
}
