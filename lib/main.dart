import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.vertical,
            children: <Widget>[
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  print("Changing State value: ${state.value}");
                  return Text(
                    "${state.value}",
                    style: Theme.of(context).textTheme.headline3,
                  );
                },
              ),
              Wrap(
                spacing: 100,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                    },
                    child: Text("-"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).increment();
                    },
                    child: Text("+"),
                  ),
                ],
              ),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  if (state.value > 5) {
                    return const Text("Yaay you had it");
                  } else {
                    return const Text("Trry more.....");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
