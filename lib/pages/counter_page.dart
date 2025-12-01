import 'dart:math';

import 'package:batman_counter/bloc/counter_bloc.dart';
import 'package:batman_counter/bloc/counter_event.dart';
import 'package:batman_counter/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final couterBloc = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text('Batman Counter')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                for (int i = 0; i < state.count; i++)
                  Positioned(
                    left: Random().nextInt(250).toDouble(),
                    top: Random().nextInt(400).toDouble(),
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset('images/batman_logo.png'),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              couterBloc.add(CounterIncrementPressed());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              couterBloc.add(CounterDecrementPressed());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
