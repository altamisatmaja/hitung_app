part of '../bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthError extends AuthState {}

class AuthDataLoaded extends AuthState {
  AuthDataLoaded({
    required this.auths,
  });

  final List<Auth> auths;

  // final List<List<Auth>> AuthsLength;
}