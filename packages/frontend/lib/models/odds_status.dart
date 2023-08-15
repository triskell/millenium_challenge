sealed class OddsStatus {}

class None extends OddsStatus {}

class Loading extends OddsStatus {}

class Result extends OddsStatus {
  final int result;

  Result(this.result);
}

class Error extends OddsStatus {
  final String message;

  Error(this.message);
}
