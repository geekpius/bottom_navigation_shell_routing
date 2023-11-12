import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubSettingView extends StatelessWidget {
  const SubSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ListTile(
        onTap: (){
          context.pushNamed('SubHomeDetail', pathParameters: {'id': index.toString()});
        },
        title: Text('This is index $index'),
      ),
    );
  }
}
