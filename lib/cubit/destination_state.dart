part of 'destination_cubit.dart';

@immutable
abstract class DestinationState {}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSuccess extends DestinationState {
  final List<DestinationModel> destinations;

  DestinationSuccess(this.destinations);

  List<Object> get props => [destinations];
}

class DestinationFailed extends DestinationState {
  final String error;

  DestinationFailed(this.error);

  @override
  List<Object> get props => [error];
}
