import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/features/home/home_screen.dart';
import 'package:sample_project/features/profile/profile_screen.dart';
import 'package:sample_project/resources/theme/color_palette.dart';

final _baseScreenNavbarIndex = StateProvider((ref) => 0);

class BaseScreen extends ConsumerWidget {
  BaseScreen({Key? key}) : super(key: key);
  final _pageController = PageController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int _index = ref.watch(_baseScreenNavbarIndex);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) {
          ref.read(_baseScreenNavbarIndex.state).state = index;
          _pageController.jumpToPage(index);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ColorPalette.primary,
        selectedItemColor: ColorPalette.secondary,
        unselectedItemColor: ColorPalette.passive,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Bildirimler",
          ),
        ],
      ),
    );
  }
}
