import 'package:acra/model/Iteration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../ExpandIteration/expandIterationDetail.dart';

class IterationListTile extends StatelessWidget {
  Iteration iteration;
  IterationListTile(this.iteration);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
          color: Theme.of(context).canvasColor,
          child: Card(
            elevation: 2,
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: iteration.itereationStatus == "pass"
                        ? Colors.green
                        : iteration.itereationStatus == "fail"
                            ? Colors.red
                            : Colors.grey,
                    child: (iteration.iterationName != "")
                        ? Text(iteration.iterationName
                            .substring(0, 2)
                            .toUpperCase())
                        : Text("EX"),
                    foregroundColor: Colors.white,
                  ),
                  title: (iteration.iterationName != "")
                      ? Text(iteration.iterationName,
                          style: TextStyle(fontSize: 20))
                      : Text("Name Missing"),
                  subtitle: (iteration.iterationSubName != "")
                      ? Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            iteration.iterationSubName,
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      : Text(""),
                  trailing: (iteration.iterationTrailName != "")
                      ? Text(iteration.iterationTrailName,
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
                          percent: iteration.progress,
                          progressColor: iteration.itereationStatus == "pass"
                              ? Colors.green
                              : iteration.itereationStatus == "fail"
                                  ? Colors.redAccent
                                  : Colors.white,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
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
          onTap: () {
            Navigator.of(context).pushNamed(
              ExpandIteration.routeName,
            );
          },
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
