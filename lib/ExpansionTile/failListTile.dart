import '../model/failTileModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FailListTile extends StatelessWidget {
  final FailedTestSet failedTestSet;
  FailListTile(this.failedTestSet);

  @override
  Widget build(BuildContext context) {
    bool manualPass = false;
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: ListTile(
        title: (failedTestSet.name != "")
            ? Text(failedTestSet.name, style: TextStyle(fontSize: 20))
            : Text("Name Missing"),
        subtitle: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  tooltip: 'Download Screenshot',
                  icon: Icon(
                    Icons.download_outlined,
                    color: Colors.blueAccent,
                  ),
                  onPressed: () {}),
              IconButton(
                  tooltip: 'Open Screenshot',
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.blueAccent,
                  ),
                  onPressed: () {}),
              IconButton(
                  tooltip: 'Error Details',
                  icon: Icon(
                    Icons.error_rounded,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {}),
              IconButton(
                  tooltip: 'Manually Pass Test Step',
                  icon: Icon(Icons.check,
                      color:
                          manualPass == false ? Colors.orange : Colors.green),
                  onPressed: () {
                    if (manualPass == false) {
                      manualPass = true;
                    } else {
                      manualPass = false;
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
