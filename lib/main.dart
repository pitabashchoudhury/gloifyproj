import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/counter_cubit.dart';

void main() {
  final CounterCubit counterCubit = CounterCubit();
  runApp(BlocProvider(
    create: (context) => counterCubit,
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
                    child: const Text("-"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).increment();
                    },
                    child: const Text("+"),
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
