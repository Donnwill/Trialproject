import '../model/expandModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ExpandListTile extends StatelessWidget {
  AutomationSet automationSet;
  ExpandListTile(this.automationSet);

  @override
  Widget build(BuildContext context) {
    return Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        child: ListTile(
            title: (automationSet.automationSetName != "")
                ? Text(
                    automationSet.automationSetName,
                    style: TextStyle(fontSize: 20),
                    maxLines: 1,
                  )
                : Text("Name Missing"),
            trailing: Icon(
              automationSet.automationStatus == "pass"
                  ? Icons.check
                  : Icons.clear,
              color: automationSet.automationStatus == "pass"
                  ? Colors.green
                  : Colors.red,
            )
            // CircleAvatar(
            //   backgroundColor: automationSet.automationGrade == "pass"
            //       ? Colors.green
            //       : automationSet.automationGrade == "fail"
            //           ? Colors.red
            //           : Colors.grey,
            //   foregroundColor: Colors.white,
            // ),
            ));
  }
}
