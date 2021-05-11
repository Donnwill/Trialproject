import 'dart:ffi';

class Iteration {
  final String iterationName;
  final String iterationSubName;
  final String iterationTrailName;
  final String itereationStatus;
  final double progress;

  Iteration(this.iterationName, this.iterationSubName, this.iterationTrailName,
      this.itereationStatus, this.progress);
}
