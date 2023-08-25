import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../const/strings.dart';
import '../list/bloc/increment_bloc.dart';
import '../list/list_widget.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            Strings.appName,
          ),
        ),
        body: BlocProvider(
          create: (context) => IncrementBloc(),
          child: const ListWidget(),
        ),
      ),
    );
  }
}
