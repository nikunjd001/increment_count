part of 'increment_bloc.dart';

abstract class IncrementEvent {}

class IncrementListInitialEvent extends IncrementEvent {}

class IncrementClickEvent extends IncrementEvent {
  final int position;

  IncrementClickEvent(this.position);
}
