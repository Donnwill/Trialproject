import 'package:flutter/material.dart';
import '../model/expandModel.dart';
import 'package:provider/provider.dart';
import '../providers/ExecutionAreaProvider.dart';
import './expandListTile.dart';
import '../ExpansionTile/failTile.dart';
import '../ExpansionTile/passTile.dart';
import '../iterations/IterationList.dart';

class ExpandIteration extends StatefulWidget {
  static const String routeName = './expandIteration';
  @override
  _ExpandIterationState createState() => _ExpandIterationState();
}

class _ExpandIterationState extends State<ExpandIteration> {
  int selectedItem = 0;
  List<AutomationSet> automationSet = [];
  List<IterationResult> iterationResult = [];
  @override
  Widget build(BuildContext context) {
    setState(() {
      ExecuitionAreaProvider execuitionAreaProvider =
          Provider.of<ExecuitionAreaProvider>(context, listen: false);
      automationSet = execuitionAreaProvider.automationSet;
    });
    setState(() {
      ExecuitionAreaProvider execuitionAreaProvider =
          Provider.of<ExecuitionAreaProvider>(context, listen: false);
      iterationResult = execuitionAreaProvider.iterationResult;
    });
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).canvasColor,
          title: ClipRRect(
            child: Image.asset("images/acra.png",
                fit: BoxFit.cover, width: 200, alignment: Alignment.center),
          ),
          centerTitle: true,
        ),
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: true,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Execution set 1',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Iteration set 1',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                                  color: Theme.of(context).primaryColor,
                                  width: 1),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(
                                    iterationResult[0].totalPassPercentage +
                                        "%",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(
                                    iterationResult[0].stepsTotallyPassed +
                                        " Test Steps",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 1),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(iterationResult[0].passPercentage + "%",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(
                                    iterationResult[0].stepsPassed +
                                        " Test Steps",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 1),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(iterationResult[0].failPercentage + "%",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(
                                    iterationResult[0].stepsFailed +
                                        " Test Steps",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 1),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(iterationResult[0].notRunPercentage + "%",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(
                                    iterationResult[0].stepsNotRun +
                                        " Test Steps",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 1),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(
                                    iterationResult[0].manualPassPercentage +
                                        "%",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(
                                    iterationResult[0].stepsManuallyPassed +
                                        " Test Steps",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 1),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(iterationResult[0].skippedPercentage + "%",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                Text(
                                    iterationResult[0].stepsSkipped +
                                        " Test Steps",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 0),
                      padding: EdgeInsets.all(5),
                      child: ListView.builder(
                          itemCount: automationSet.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                            //return (Text("Hi"));
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedItem = automationSet[index].id;
                                });
                              },
                              child: Container(
                                color: Theme.of(context).canvasColor,
                                child: Card(
                                  elevation: 10,
                                  child: Column(
                                    children: [
                                      ExpandListTile(automationSet[index]),
                                      (automationSet[index].id == selectedItem)
                                          ? (automationSet[index]
                                                      .automationStatus ==
                                                  "pass")
                                              ? ExpansionTilePass()
                                              : ExpansionTileFail()
                                          : Container()
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
