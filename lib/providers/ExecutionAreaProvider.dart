import 'package:acra/model/executionArea.dart';
import 'package:acra/model/Iteration.dart';
import '../model/expandModel.dart';
import '../model/passTileModel.dart';
import '../model/failTileModel.dart';

import 'package:flutter/material.dart';

class ExecuitionAreaProvider with ChangeNotifier {
  List<ExecutionArea> _executionAreas = [
    ExecutionArea(1, "Execution set 1", "12/01/2021", "6:00 am", "pass", 0.2),
    ExecutionArea(2, "Regression set 2", "12/01/2021", "6:00 am", "fail", 0.5),
    ExecutionArea(3, "Delay set 3", "12/01/2021", "6:00 am", "pass", 0.5),
    ExecutionArea(
        4, "Search_filter set 4", "12/01/2021", "6:00 am", 'pass', 0.6),
    ExecutionArea(5, "Execution set 5", "12/01/2021", "6:00 am", 'fail', 0.5),
    ExecutionArea(
        6, "Execution set 6", "12/01/2021", "6:00 am", 'scheduled', 0.0),
    ExecutionArea(7, "", "", "", 'pass', 0.5),
    ExecutionArea(8, "Execution set 8", "12/01/2021", "6:00 am", 'pass', 1.0),
    ExecutionArea(9, "Execution set 9", "12/01/2021", "6:00 am", 'pass', 0.8),
    ExecutionArea(
        10, "Execution set 10", "12/01/2021", "6:00 am", 'scheduled', 0.0),
    ExecutionArea(11, "Execution set 11", "12/01/2021", "6:00 am", 'pass', 0.4),
    ExecutionArea(12, "Execution set 12", "12/01/2021", "6:00 am", 'fail', 0.5),
    ExecutionArea(13, "Execution set 13", "12/01/2021", "6:00 am", 'pass', 0.7),
    ExecutionArea(
        14, "Execution set 14", "12/01/2021", "6:00 am", 'scheduled', 0.0),
    ExecutionArea(15, "Execution set 15", "12/01/2021", "6:00 am", 'fail', 0.5),
  ];
  get executionAreas {
    return _executionAreas;
  }

  List<Iteration> _iterations = [
    Iteration("Iteration set 1", "12/01/2021", "6:00 am", "pass", 0.2),
    Iteration("Regression set 2", "12/01/2021", "6:00 am", "fail", 0.5),
    Iteration("Delay set 3", "12/01/2021", "6:00 am", "pass", 0.5),
    Iteration("Search_filter set 4", "12/01/2021", "6:00 am", "pass", 0.6),
    Iteration("Iteration set 5", "12/01/2021", "6:00 am", "fail", 0.5),
    Iteration("Iteration set 6", "12/01/2021", "6:00 am", "scheduled", 0.0),
    Iteration("", "", "", "pass", 0.5),
    Iteration("Iteration set 8", "12/01/2021", "6:00 am", "pass", 1.0),
    Iteration("Iteration set 9", "12/01/2021", "6:00 am", "pass", 0.8),
    Iteration("Iteration set 10", "12/01/2021", "6:00 am", "scheduled", 0.0),
    Iteration("Set 11", "12/01/2021", "6:00 am", "pass", 0.4),
    Iteration("Iteration set 12", "12/01/2021", "6:00 am", "fail", 0.5),
    Iteration("Iteration set 13", "12/01/2021", "6:00 am", "pass", 0.7),
    Iteration("Test set 14", "12/01/2021", "6:00 am", "scheduled", 0.0),
    Iteration("Iteration set 15", "12/01/2021", "6:00 am", "fail", 0.5),
  ];
  get iterations {
    return _iterations;
  }

  List<AutomationSet> _automationSet = [
    AutomationSet(1, 'Admin', 'pass'),
    AutomationSet(2, 'Login function and Log Out', 'pass'),
    AutomationSet(3, 'System', 'pass'),
    AutomationSet(4, 'Maintenance', 'fail'),
    AutomationSet(5, 'Driver Settlement', 'pass'),
    AutomationSet(6, 'Contractor Service', 'pass'),
    AutomationSet(7, 'Offline Board', 'fail'),
    AutomationSet(8, 'Order Entry for cs user', 'pass'),
    AutomationSet(9, 'Activation and Reload', 'fail'),
    AutomationSet(10, 'Delay Service', 'fail'),
    AutomationSet(11, 'Yard Confirmation', 'pass')
  ];
  get automationSet {
    return _automationSet;
  }

  List<FailedTestSet> _failedTestSet = [
    FailedTestSet('Click on Driver Rates'),
    FailedTestSet('Fill Trailer'),
    FailedTestSet('Select Dealer'),
    FailedTestSet('Enter Value Miles'),
    FailedTestSet('Click on Save'),
    FailedTestSet('Verify PickUp Fee'),
    FailedTestSet('Click on Edit'),
    FailedTestSet('Select Factory'),
  ];
  get failedTestSet {
    return _failedTestSet;
  }

  List<IterationResult> _iterationResult = [
    IterationResult(
        "90", "6583", "90", "6580", "5", "1000", "5", "985", "0", "3", "0", "0")
  ];

  get iterationResult {
    return _iterationResult;
  }

  List<PassResult> _passResult = [
    PassResult(
        "90", "1250", "89", "1200", "0", "0", "5", "125", "1", "50", "5", "125")
  ];

  get passResult {
    return _passResult;
  }

  List<FailResult> _failResult = [
    FailResult(
        "90", "1250", "89", "1200", "5", "125", "5", "125", "1", "50", "0", "0")
  ];

  get failResult {
    return _failResult;
  }
}
