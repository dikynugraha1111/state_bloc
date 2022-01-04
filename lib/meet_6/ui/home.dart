import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_bloc/meet_6/state/counter_bloc.dart';

class HomeMeet6 extends StatelessWidget {
  const HomeMeet6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BlocListener"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<CounterBloc6, int>(
              listenWhen: (previous, current) {
                if (current > 10) {
                  return true;
                }
                return false;
              },
              listener: (context, state) {
                const SnackBar(
                  content: Text("Lebih dari 10"),
                );
              },
              builder: (context, state) {
                return Text("Ini angka - $state");
              },
            ),
            // BlocListener<CounterBloc5, int>(
            //   listener: (context, state) {
            //     print(context.read<CounterBloc5>().counter);
            //     print(context.read<CounterBloc5>().light);
            //     if (context.read<CounterBloc5>().counter % 2 == 0) {
            //       context.read<CounterBloc5>().cMode();
            //       context.read<Mode>().cMode();
            //     }
            //   },
            //   child: BlocBuilder<CounterBloc5, int>(
            //     builder: (context, state) {
            //       return Text(
            //           "Ini angka - ${context.read<CounterBloc5>().counter}");
            //     },
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc6>().add();
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc6>().minus();
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
