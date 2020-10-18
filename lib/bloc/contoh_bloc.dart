import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'contoh_event.dart';
part 'contoh_state.dart';

class ContohBloc extends Bloc<ContohEvent, ContohState> {
  ContohBloc() : super(ContohInitial());

  @override
  Stream<ContohState> mapEventToState(
    ContohEvent event,
  ) async* {
    
  }
}
