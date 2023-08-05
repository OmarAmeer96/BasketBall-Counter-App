import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;

  int teamBPoints = 0;

  String result = '';

  void teamIncrement({required String team, required int numberOfPoints}) {
    if (team == 'A') {
      teamAPoints += numberOfPoints;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += numberOfPoints;
      emit(CounterBIncrementState());
    }
  }

  void resetTeamsPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetTeamsState());
  }

  void resultText() {
    if (teamAPoints >= 20 && teamBPoints >= 20) {
      result = "Draw";
    } else if (teamAPoints >= 20) {
      result = "Gada3 Yala Ya Team (A) Yala!";
    } else if (teamBPoints >= 10) {
      result = "Gada3 Yala Ya Team (B) Yala!";
    } else {
      result = "";
    }
    emit(CounterResultState());
  }
}
