import 'package:bloctest/cubit/test_cubit.dart';
import 'package:bloctest/screens/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => TestCubit(),
        child: const BlocTest(),
      ),
    );
  }
}
