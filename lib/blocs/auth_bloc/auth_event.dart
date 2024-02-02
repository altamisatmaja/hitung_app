part of '../bloc.dart';

@immutable
abstract class AuthEvent {}

class SetAuthState extends AuthEvent {
  SetAuthState([this.state]);

  final AuthState? state;
}

class SetAuthToInitial extends AuthEvent {}

class InitializeAuthData extends AuthEvent {}