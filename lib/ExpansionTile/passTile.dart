import 'package:flutter/material.dart';
import '../model/passTileModel.dart';
import '../providers/ExecutionAreaProvider.dart';
import 'package:provider/provider.dart';

class ExpansionTilePass extends StatefulWidget {
  @override
  _ExpansionTilePassState createState() => _ExpansionTilePassState();
}

class _ExpansionTilePassState extends State<ExpansionTilePass> {
  List<PassResult> passResult = [];
  @override
  Widget build(BuildContext context) {
    setState(() {
      ExecuitionAreaProvider execuitionAreaProvider =
          Provider.of<ExecuitionAreaProvider>(context, listen: false);
      passResult = execuitionAreaProvider.passResult;
    });
    return SizedBox(
      height: 255,
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
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 1),
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
                  Text(passResult[0].totalPassPercentage + "%",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text(passResult[0].stepsTotallyPassed + " Test Steps",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 1),
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
                  Text(passResult[0].passPercentage + "%",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text(passResult[0].stepsPassed + " Test Steps",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 1),
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
                  Text(passResult[0].failPercentage + "%",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text(passResult[0].stepsFailed + " Test Steps",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 1),
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
                  Text(passResult[0].notRunPercentage + "%",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text(passResult[0].stepsNotRun + " Test Steps",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 1),
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
                  Text(passResult[0].manualPassPercentage + "%",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text(passResult[0].stepsManuallyPassed + " Test Steps",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 1),
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
                  Text(passResult[0].skippedPercentage + "%",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text(passResult[0].stepsSkipped + " Test Steps",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
