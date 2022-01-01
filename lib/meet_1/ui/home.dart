import 'package:flutter/material.dart';
import 'package:try_bloc/meet_1/state/counter_bloc.dart';

class HomeMeet1 extends StatelessWidget {
  const HomeMeet1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc bloc = CounterBloc();

    return Scaffold(
      appBar: AppBar(
        title: const Text("BloC Dasar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<dynamic>(
                stream: bloc.output,
                initialData: 0,
                builder: (context, snapshot) {
                  return Text("Data - ${snapshot.data}");
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    bloc.inputan.add("add");
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    bloc.inputan.add("minus");
                  },
                  icon: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
