import 'package:bloc_explain/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, int>(
        builder: (context, counter) {
          return Container(
            child: Column(
              children: <Widget>[
                Text('$counter'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    context.bloc<CounterBloc>().add(CounterEvent.increment);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    context.bloc<CounterBloc>().add(CounterEvent.decrement);
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
