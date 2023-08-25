import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/increment_bloc.dart';
import './list_item.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final list = BlocProvider.of<IncrementBloc>(
      context,
      listen: false,
    ).getCounterList();
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return BlocSelector<IncrementBloc, IncrementState, int>(
          selector: (state) {
            if (state is IncrementUpdatedCountState &&
                state.position == index) {
              return state.count;
            }
            return list[index];
          },
          builder: (context, count) {
            return ListItem(
              position: index,
              count: count,
            );
          },
        );
      },
    );
  }
}
