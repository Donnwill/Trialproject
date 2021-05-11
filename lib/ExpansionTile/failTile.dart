import 'package:flutter/material.dart';
import '../model/failTileModel.dart';
import '../providers/ExecutionAreaProvider.dart';
import 'package:provider/provider.dart';
import '../ExpansionTile/failListTile.dart';

class ExpansionTileFail extends StatefulWidget {
  @override
  _ExpansionTileFailState createState() => _ExpansionTileFailState();
}

class _ExpansionTileFailState extends State<ExpansionTileFail> {
  List<FailedTestSet> failedTestSet = [];
  List<FailResult> failResult = [];
  @override
  Widget build(BuildContext context) {
    setState(() {
      ExecuitionAreaProvider execuitionAreaProvider =
          Provider.of<ExecuitionAreaProvider>(context, listen: false);
      failedTestSet = execuitionAreaProvider.failedTestSet;
    });
    setState(() {
      ExecuitionAreaProvider execuitionAreaProvider =
          Provider.of<ExecuitionAreaProvider>(context, listen: false);
      failResult = execuitionAreaProvider.failResult;
    });

    return SizedBox(
      height: 525,
      child: Column(children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(2),
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.all(5),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.lightBlueAccent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Pass",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].totalPassPercentage + "%",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].stepsTotallyPassed + " Test Steps",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.greenAccent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pass",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].passPercentage + "%",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].stepsPassed + " Test Steps",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.redAccent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fail",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].failPercentage + "%",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].stepsFailed + " Test Steps",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.grey,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Not Run",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].notRunPercentage + "%",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].stepsNotRun + " Test Steps",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.amber,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Manually Pass",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].manualPassPercentage + "%",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].stepsManuallyPassed + " Test Steps",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.teal[300],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Skipped",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].skippedPercentage + "%",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text(failResult[0].stepsSkipped + " Test Steps",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            child: ListView.builder(
                itemCount: failedTestSet.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  //return (Text("Hi"));
                  return Container(
                    color: Theme.of(context).canvasColor,
                    child: Card(
                      elevation: 2,
                      child: Column(
                        children: [FailListTile(failedTestSet[index])],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ]),
    );
  }
}
