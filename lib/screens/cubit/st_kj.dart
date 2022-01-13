abstract class StKj{}

class StKjInit extends StKj{}

class StKjLoaded extends StKj{}

class StKjLoading extends StKj{}

class StKjNoAuthError extends StKj{}

class StKjNoInternetError extends StKj {}

class StKjError extends StKj{
  final int? error;
  final String? message;
  StKjError({this.error,this.message});
}
    