import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(counterAIncreamentState());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamAincrement({required team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(counterAIncreamentState());
    } else {
      teamBPoints += buttonNumber;
      emit(counteBIncreamentState());
    }
  }
}
