import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePointA() {
    setState(() {
      teamAPoints++;
    });
  }

  void addTwoPointA() {
    setState(() {
      teamAPoints += 2;
    });
  }

  void addThreePointA() {
    setState(() {
      teamAPoints += 3;
    });
  }

  void addOnePointB() {
    setState(() {
      teamBPoints++;
    });
  }

  void addTwoPointB() {
    setState(() {
      teamBPoints += 2;
    });
  }

  void addThreePointB() {
    setState(() {
      teamBPoints += 3;
    });
  }

  void reset() {
    setState(() {
      teamAPoints = 0;
      teamBPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                            "$teamAPoints",
                            style: const TextStyle(
                              fontSize: 130,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                          child: ElevatedButton(
                            onPressed: addOnePointA,
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
                            onPressed: addTwoPointA,
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
                            onPressed: addThreePointA,
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
                            "$teamBPoints",
                            style: const TextStyle(
                              fontSize: 130,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                          child: ElevatedButton(
                            onPressed: addOnePointB,
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
                            onPressed: addTwoPointB,
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
                            onPressed: addThreePointB,
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
                (teamAPoints >= 20 && teamBPoints >= 20)
                    ? "Draw"
                    : (teamAPoints >= 10
                        ? "Gada3 Yala Ya Team (A) Yala!"
                        : (teamBPoints >= 10
                            ? "Gada3 Yala Ya Team (B) Yala!"
                            : "")),
                style: const TextStyle(
                  fontSize: 28,
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
                onPressed: reset,
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
      ),
    );
  }
}
