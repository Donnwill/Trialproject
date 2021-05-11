class IterationResult {
  final String totalPassPercentage;
  final String stepsTotallyPassed;
  final String passPercentage;
  final String stepsPassed;
  final String failPercentage;
  final String stepsFailed;
  final String notRunPercentage;
  final String stepsNotRun;
  final String manualPassPercentage;
  final String stepsManuallyPassed;
  final String skippedPercentage;
  final String stepsSkipped;

  IterationResult(
      this.totalPassPercentage,
      this.stepsTotallyPassed,
      this.passPercentage,
      this.stepsPassed,
      this.failPercentage,
      this.stepsFailed,
      this.notRunPercentage,
      this.stepsNotRun,
      this.manualPassPercentage,
      this.stepsManuallyPassed,
      this.skippedPercentage,
      this.stepsSkipped);
}

class AutomationSet {
  final int id;
  final String automationSetName;
  final String automationStatus;

  AutomationSet(this.id, this.automationSetName, this.automationStatus);
}
