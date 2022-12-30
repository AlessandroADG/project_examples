import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_example/counter_application/component/counter_bloc_cubit.dart';
import 'package:project_example/counter_application/pages/counter_screen.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBlocCubit(0),
      child: CounterScreen(),
    );
  }
}
