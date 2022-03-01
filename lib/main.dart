import 'package:flutter/material.dart';
import 'package:flutter_shared_prefernces/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SharedPreferencesHelper _preferencesHelper = SharedPreferencesHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                    onPressed: () {
                      _preferencesHelper.setString();
                    },
                    child: Text("Save Data")),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                    onPressed: () {
                      _preferencesHelper.getString();
                    },
                    child: Text("Get Data")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
