part of '../bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SetAuthState>((event, emit) => emit(event.state ?? _AuthDataLoaded));

    on<SetAuthToInitial>((event, emit) => emit(AuthInitial()));

    on<InitializeAuthData>((event, emit) async {});
  }

  // ignore: non_constant_identifier_names, prefer_const_literals_to_create_immutables
  AuthDataLoaded get _AuthDataLoaded => AuthDataLoaded(auths: []);
}
