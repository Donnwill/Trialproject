import 'package:acra/iterations/IterationListTile.dart';
import 'package:acra/model/Iteration.dart';
import 'package:acra/providers/ExecutionAreaProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IterationList extends StatefulWidget {
  static const String routeName = './iterationArea';

  @override
  State<StatefulWidget> createState() {
    return _IterationListState();
  }
}

class _IterationListState extends State<IterationList> {
  List<Iteration> iterations = [];
  @override
  Widget build(BuildContext context) {
    setState(() {
      ExecuitionAreaProvider execuitionAreaProvider =
          Provider.of<ExecuitionAreaProvider>(context, listen: false);
      iterations = execuitionAreaProvider.iterations;
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
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    'Iteration List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      height: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: new ListView.builder(
                    itemCount: iterations.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      //return (Text("Hi"));
                      return IterationListTile(iterations[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class IterationList extends StatefulWidget {
//   static const dynamic routeName = './iterationArea';
//   @override
//   _IterationListState createState() => _IterationListState();
// }

// class _IterationListState extends State<IterationList> {
//   final TextEditingController _searchQuery = TextEditingController();
//   List<Iteration> iterations = [];
//   @override
//   Widget build(BuildContext context) {
//     setState(() {
//       ExecuitionAreaProvider execuitionAreaProvider =
//           Provider.of<ExecuitionAreaProvider>(context, listen: false);
//       iterations = execuitionAreaProvider.iterations;
//     });

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Iterations'),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             controller: _searchQuery,
//             decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.search), hintText: "Search"),
//           ),
//           Expanded(
//             child: new ListView.builder(
//                 itemCount: iterations.length,
//                 itemBuilder: (BuildContext ctxt, int index) {
//                   //return (Text("Hi"));
//                   return IterationListTile(iterations[index]);
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }
