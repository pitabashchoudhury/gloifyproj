import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'controller/post.dart';
import 'controller/post.dart';
import 'cubit/counter_cubit.dart';
import './data/post.dart' as global;

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
          child: FutureBuilder(
              future: AllPost().loadAllData(),
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data == true) {
                  return ListView.builder(
                      itemCount: global.myPost.length,
                      itemBuilder: (context, index) {
                        return Wrap(
                          direction: Axis.vertical,
                          children: <Widget>[
                            Text(
                              global.myPost[index].id.toString(),
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                              global.myPost[index].title.toString(),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        );
                      });
                } else if (snapshot.hasData && snapshot.data == false) {
                  return const Text("no Data Found");
                } else {
                  return const CircularProgressIndicator();
                }
              }),
        ),
      ),
    );
  }
}
