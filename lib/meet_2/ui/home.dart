import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_bloc/meet_2/state/counter_bloc.dart';

class HomeMeet2 extends StatelessWidget {
  const HomeMeet2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var blocCounter = BlocProvider.of<CounterBloc2>(context);
    // Untuk BlocProvider.of dengan params listen false bisa menggunakan context.read
    // ----------------------------------------------------------------------------
    // Untuk BlocProvider.of dengan params listen true bisa menggunakan context.watch
    // Perlu diperhatikan menggunakan context.watch artinya dipantau setiap saat
    // Widget akan selalu di build ulang.
    // Kegunaanya adalah ketika di build kita ada child widget yang beda classnya/ pisah dengan build utama

    return Scaffold(
      appBar: AppBar(
        title: const Text("BloC with Flutter BloC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc2, int>(
              builder: (context, state) {
                return Text("Ini angka - ${blocCounter.value}");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    blocCounter.add("add");
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    blocCounter.add("remove");
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
