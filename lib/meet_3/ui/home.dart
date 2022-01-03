import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_bloc/meet_3/state/counter_bloc.dart';

class HomeMeet3 extends StatelessWidget {
  const HomeMeet3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BloC with Cubit"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc3, int>(
              builder: (context, state) {
                return Text(
                    "Ini angka - ${context.read<CounterBloc3>().count}");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc3>().add();
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc3>().minus();
                  },
                  icon: Icon(Icons.remove),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
