import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_state.dart';

class TestCubit extends Cubit<int> {
  TestCubit() : super(0);
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
