import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:fluter_bwa_airplane/models/destination_model.dart';
import 'package:flutter/rendering.dart';
import 'package:meta/meta.dart';

import '../services/destination_service.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestinationSuccess(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
      
    }
  }
}
