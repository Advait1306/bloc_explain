import 'package:bloc_explain/bloc/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FlatButton(
            child: Text('Light theme'),
            onPressed: () {
              context.bloc<ThemeBloc>().add(ThemeEvent.light);
            },
          ),
          FlatButton(
            child: Text('Dark theme'),
            onPressed: () {
              context.bloc<ThemeBloc>().add(ThemeEvent.dark);
            },
          ),

          ///New learning here:
          ///So in the meet call I told you guys that to access the current theme, we need the 
          ///BlocBuilder in the same widget, that is not the case.
          ///I found a way to access the current theme using the context as long as the blocBuilder
          ///is somewhere above in the widet tree, in the case of this theme widget, the blocBuilder
          ///was used on the MaterialApp widget(main.dart) file is above this ThemeWidget.
          ///So we can use [context.bloc<ThemeBloc>().state] to access the current state.

          FlatButton(
                child: Text('Toggle theme'),
                onPressed: () {
                  final theme = context.bloc<ThemeBloc>().state; // Here is the new found line
                  if (theme == ThemeData.dark()) {
                    context.bloc<ThemeBloc>().add(ThemeEvent.light);
                  } else {
                    context.bloc<ThemeBloc>().add(ThemeEvent.dark);
                  }
                },
              ),

         
        ],
      ),
    );
  }
}
