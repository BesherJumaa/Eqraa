abstract class Failure {
   final String message;
   
   Failure({required this.message});
}

class UnhandledFailure extends Failure {
  UnhandledFailure({required String message}) : super(message: message);
  
}
