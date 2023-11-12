
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    this.currentIndex = 0,
    this.onTap,
  });

  final int currentIndex;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey)),
      ),
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: onTap,
          iconSize: 32,
          selectedLabelStyle: const TextStyle(
            fontSize: 12.0,
            color: Colors.black87,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12.0,
            color: Colors.blueGrey,
          ),
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
                color: currentIndex == 0 ? Colors.black87 : Colors.blueGrey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 32,
                color: currentIndex == 1 ? Colors.black87 : Colors.blueGrey,
              ),
              label: '',
            ),
          ],
        ),
      )
    );
  }
}
