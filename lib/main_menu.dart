import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/app_bottom_navigation_bar.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key, required this.navigationShell,});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;

  void onTap(int index){
    widget.navigationShell.goBranch(index, initialLocation: index == widget.navigationShell.currentIndex,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: widget.navigationShell,
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() => selectedIndex = index );
          onTap(index);
        },
      ),
    );
  }
}
