import 'package:basketball_points_counter_app/cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("2 Person Game (By: Omario)"),
            backgroundColor: Colors.indigo,
          ),
          body: Column(
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            "Team A",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Pacifico",
                            ),
                          ),
                          const Text(
                            "!إلعب يلا",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "Amiri Quran",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                              style: const TextStyle(
                                fontSize: 120,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(
                                        team: 'A', numberOfPoints: 1);
                                BlocProvider.of<CounterCubit>(context)
                                    .resultText();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  minimumSize: const Size(145, 50)),
                              child: const Text(
                                "Add 1 Point",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(
                                        team: 'A', numberOfPoints: 2);
                                BlocProvider.of<CounterCubit>(context)
                                    .resultText();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  minimumSize: const Size(145, 50)),
                              child: const Text(
                                "Add 2 Points",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(
                                        team: 'A', numberOfPoints: 3);
                                BlocProvider.of<CounterCubit>(context)
                                    .resultText();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  minimumSize: const Size(145, 50)),
                              child: const Text(
                                "Add 3 Points",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 50,
                      color: Colors.blueGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            "Team B",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Pacifico",
                            ),
                          ),
                          const Text(
                            "!إلعب يلا",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "Amiri Quran",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                              style: const TextStyle(
                                fontSize: 120,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(
                                        team: 'B', numberOfPoints: 1);
                                BlocProvider.of<CounterCubit>(context)
                                    .resultText();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  minimumSize: const Size(145, 50)),
                              child: const Text(
                                "Add 1 Point",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(
                                        team: 'B', numberOfPoints: 2);
                                BlocProvider.of<CounterCubit>(context)
                                    .resultText();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  minimumSize: const Size(145, 50)),
                              child: const Text(
                                "Add 2 Points",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(
                                        team: 'B', numberOfPoints: 3);
                                BlocProvider.of<CounterCubit>(context)
                                    .resultText();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo,
                                  minimumSize: const Size(145, 50)),
                              child: const Text(
                                "Add 3 Points",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  BlocProvider.of<CounterCubit>(context).result,
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: "Pacifico",
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).resetTeamsPoints();
                    BlocProvider.of<CounterCubit>(context).resultText();
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
