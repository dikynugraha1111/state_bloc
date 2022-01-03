import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_bloc/meet_4/state/counter_bloc.dart';

class HomeMeet4 extends StatelessWidget {
  const HomeMeet4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MultiBloc Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc4, int>(
              builder: (context, state) {
                return Text(
                    "Ini angka - ${context.read<CounterBloc4>().counter}");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc4>().add();
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc4>().minus();
                  },
                  icon: const Icon(Icons.remove),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
