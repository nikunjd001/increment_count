import 'package:flutter_bloc/flutter_bloc.dart';

part 'increment_event.dart';

part 'increment_state.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState> {
  late List<int> _listItems;
  static const _totalListSize = 100;
  static const _defaultCounter = 0;

  IncrementBloc() : super(IncrementInitialState()) {
    on<IncrementListInitialEvent>((event, emit) {
      emit(IncrementListLoadedState(_listItems));
    });

    on<IncrementClickEvent>((event, emit) {
      emit(
        IncrementUpdatedCountState(
          event.position,
          _listItems[event.position],
        ),
      );
    });

    _initializeListItem();
  }

  _initializeListItem() {
    _listItems = List.generate(_totalListSize, (index) => _defaultCounter);
    add(IncrementListInitialEvent());
  }

  List<int> getCounterList() {
    return _listItems;
  }

  onIncrementItemClick(int position) {
    _listItems[position] += 1;
    add(IncrementClickEvent(position));
  }
}
