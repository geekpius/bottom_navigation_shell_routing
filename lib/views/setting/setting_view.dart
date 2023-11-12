import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: (){
          context.pushNamed('SubSetting');
        },
        icon: const Icon(
          Icons.settings,
          size: 50,
          color: Colors.green,
        ),
      ),
    );
  }
}
