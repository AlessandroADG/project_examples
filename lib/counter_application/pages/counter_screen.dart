import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_example/counter_application/component/counter_bloc_cubit.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBlocCubit, CounterBlocState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Example of counter application',
            style: TextStyle(fontSize: 22, color: Colors.greenAccent),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'This is the score: ${context.read<CounterBlocCubit>().value}',
              style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBlocCubit>().changeValue();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                    child: const Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.green,
                    )),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBlocCubit>().decrementValue();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                    child: const Icon(
                      Icons.minimize,
                      size: 15,
                      color: Colors.red,
                    ))
              ],
            )
          ],
        ),
      );
    });
  }
}
