import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/custome_appbar.dart';

class HomeLayoutView extends StatelessWidget {
  const HomeLayoutView({super.key});
static const routeName = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: buildAppBar(context, title: 'Home'),
      body: Center(
        child: Text('Home Layout View'),
      ),
    );
  }
}