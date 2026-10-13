import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.accessibility_new_outlined),
          selectedIcon: const Icon(Icons.accessibility_new, color: AppTheme.primaryColor),
          label: 'Routines',
        ),
        NavigationDestination(
          icon: const Icon(Icons.self_improvement_outlined),
          selectedIcon: const Icon(Icons.self_improvement, color: AppTheme.primaryColor),
          label: 'Psoas & Back',
        ),
        NavigationDestination(
          icon: const Icon(Icons.timer_outlined),
          selectedIcon: const Icon(Icons.timer, color: AppTheme.primaryColor),
          label: 'Timer',
        ),
        NavigationDestination(
          icon: const Icon(Icons.whatshot_outlined),
          selectedIcon: const Icon(Icons.whatshot, color: AppTheme.primaryColor),
          label: 'Streaks',
        ),

        ],
      ),
    );
  }
}
