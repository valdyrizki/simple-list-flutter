import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: MainApp(),
    ));

class MainApp extends StatelessWidget {
  var androidVersions = [
    "Form",
    "Operator Kondisi",
    "Operator Aritmatika",
  ];

  final List<Icon> logo = [
    Icon(Icons.assignment),
    Icon(Icons.tab_unselected),
    Icon(Icons.exposure),
  ];

  var open = [
    "openPage0",
    "openPage1",
    "openPage2",
  ];

  void openPage0(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
          );
        },
        itemBuilder: (context, index) {
          
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(androidVersions[index]),
              ),
              IconButton(
                  icon: logo[index],
                  color: Colors.deepOrange,
                  tooltip: 'Laravel',
                  iconSize: 50.0,
                  onPressed: () {
                  
                },
              ),
            ],
          );
        },
        
        itemCount: androidVersions.length,
      ),
    );
  }
}