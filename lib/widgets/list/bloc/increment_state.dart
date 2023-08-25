part of 'increment_bloc.dart';

abstract class IncrementState {}

class IncrementInitialState extends IncrementState {}

class IncrementListLoadedState extends IncrementState {
  final List<int> data;

  IncrementListLoadedState(this.data);
}

class IncrementUpdatedCountState extends IncrementState {
  final int position;
  final int count;

  IncrementUpdatedCountState(this.position, this.count);
}
