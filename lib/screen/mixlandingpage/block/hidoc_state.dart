part of 'hidoc_bloc.dart';

@immutable
abstract class HidocState {}

class HidocInitial extends HidocState {}

class UserLoadingState extends HidocState {

}

class UserLoadedState extends HidocState {

}

class UserErrorState extends HidocState {
  final String error;
  UserErrorState(this.error);
  @override
  List<Object?> get props => [error];
}