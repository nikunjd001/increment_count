import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/increment_bloc.dart';

class ListItem extends StatelessWidget {
  final int position;
  final int count;

  const ListItem({
    Key? key,
    required this.position,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Text(
            count.toString(),
          ),
          TextButton(
            onPressed: () {
              BlocProvider.of<IncrementBloc>(
                context,
                listen: false,
              ).onIncrementItemClick(
                position,
              );
            },
            child: const Text(
              "+",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
