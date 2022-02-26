import 'package:bloctest/cubit/test_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocTest extends StatelessWidget {
  const BlocTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: BlocBuilder<TestCubit, int>(
        builder: (context, count) => Center(child: Text('$count')),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => context.read<TestCubit>().increment(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => context.read<TestCubit>().decrement(),
        ),
      ]),
    );
  }
}
