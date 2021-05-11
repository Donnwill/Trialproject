import 'package:acra/executionArea/exectionListTile.dart';
import 'package:acra/model/executionArea.dart';
import 'package:acra/providers/ExecutionAreaProvider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExecutionAreaList extends StatefulWidget {
  static const String routeName = './executionArea';

  @override
  State<StatefulWidget> createState() {
    return _ExecutionAreaListState();
  }
}

class _ExecutionAreaListState extends State<ExecutionAreaList> {
  final TextEditingController _searchQuery = TextEditingController();
  List<ExecutionArea> executionAreas = [];

  @override
  Widget build(BuildContext context) {
    setState(() {
      ExecuitionAreaProvider execuitionAreaProvider =
          Provider.of<ExecuitionAreaProvider>(context, listen: false);
      executionAreas = execuitionAreaProvider.executionAreas;
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
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: _searchQuery,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    enabled: false),
              ),
              Expanded(
                child: new ListView.builder(
                    itemCount: executionAreas.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return new ExecutionListTile(executionAreas[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
