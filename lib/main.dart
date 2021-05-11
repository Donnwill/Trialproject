import 'package:acra/ExpansionTile/passTile.dart';
import 'package:acra/iterations/IterationList.dart';
import 'package:acra/providers/ExecutionAreaProvider.dart';
import 'package:flutter/material.dart';
import 'executionArea/executionArea.dart';
import './pageRoutes/pageRoutes.dart';
import 'package:provider/provider.dart';
import 'ExpandIteration/expandIterationDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExecuitionAreaProvider()),
      ],
      child: MaterialApp(
          theme: ThemeData(

              //#0D4E96
              primaryColor: Color.fromARGB(0xFF, 0x00, 0x9e, 0xe3),
              accentColor: Colors.red,
              canvasColor: Color.fromARGB(0xFF, 0xE1, 0xF5, 0xFE),
              fontFamily: 'Raleway',
              primaryIconTheme: Theme.of(context)
                  .primaryIconTheme
                  .copyWith(color: Colors.white),
              textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(
                      color: Color.fromARGB(0xFF, 0x00, 0x9e, 0xe3),
                      fontWeight: FontWeight.w900,
                      fontSize: 10),
                  body1: TextStyle(
                      color: Color.fromARGB(0xFF, 0x00, 0x9e, 0xe3),
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                  body2: TextStyle(
                      color: Color.fromARGB(0xFF, 0x00, 0x9e, 0xe3),
                      fontWeight: FontWeight.w600,
                      fontSize: 20))),
          home: ExpandIteration(),
          routes: {
            PageRoutes.executionarea: (context) => ExecutionAreaList(),
            PageRoutes.iteration: (context) => IterationList(),
            PageRoutes.expanditeration: (context) => ExpandIteration(),
          }),
    );
  }
}
