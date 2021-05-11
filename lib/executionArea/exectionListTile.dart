import 'package:acra/iterations/IterationList.dart';
import 'package:acra/model/executionArea.dart';
import 'package:acra/pageRoutes/pageRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../iterations/IterationListTile.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ExecutionListTile extends StatelessWidget {
  ExecutionArea executionArea;
  ExecutionListTile(this.executionArea);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            IterationList.routeName,
          );
        },
        child: Container(
            color: Theme.of(context).canvasColor,
            child: Card(
                elevation: 2,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.indigoAccent,
                        child: (executionArea.executionName != "")
                            ? Text(executionArea.executionName
                                .substring(0, 2)
                                .toUpperCase())
                            : Text("EX"),
                        foregroundColor: Colors.white,
                      ),
                      title: (executionArea.executionName != "")
                          ? Text(executionArea.executionName,
                              style: TextStyle(fontSize: 20))
                          : Text("Name Missing"),
                      subtitle: (executionArea.executionSubName != "")
                          ? Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(executionArea.executionSubName,
                                  style: TextStyle(fontSize: 20)),
                            )
                          : Text(""),
                      trailing: (executionArea.executionTrailName != "")
                          ? Text(executionArea.executionTrailName,
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 18))
                          : Text(""),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: new LinearPercentIndicator(
                              animation: true,
                              lineHeight: 5.0,
                              animationDuration: 2000,
                              percent: executionArea.progress,
                              progressColor:
                                  executionArea.executionStatus == "pass"
                                      ? Colors.green
                                      : executionArea.executionStatus == "fail"
                                          ? Colors.redAccent
                                          : Colors.white,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))),
      ),
      actions: <Widget>[
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Share',
          color: Colors.indigo,
          icon: Icons.share,
          onTap: () {},
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
            caption: 'More',
            color: Colors.black45,
            icon: Icons.more_horiz,
            onTap: () {}
            //Navigator.pushReplacementNamed(context, PageRoutes.iterationarea),
            ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {},
        ),
      ],
    );
  }
}
