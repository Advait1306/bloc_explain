import 'package:bloc_explain/widgets/counter_widget.dart';
import 'package:bloc_explain/widgets/theme_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc app'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[ThemeWidget(), CounterWidget()],
        ),
      ),
    );
  }
}
