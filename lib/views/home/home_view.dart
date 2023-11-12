import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: (){
          context.pushNamed('SubHome');
        },
        icon: const Icon(
          Icons.home,
          size: 50,
          color: Colors.red,
        ),
      ),
    );
  }
}
