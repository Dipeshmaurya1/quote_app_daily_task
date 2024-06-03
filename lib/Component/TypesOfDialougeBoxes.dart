import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dialog Demo',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dialog Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _showAlertDialog(context),
              child: Text('Show AlertDialog'),
            ),
            ElevatedButton(
              onPressed: () => _showSimpleDialog(context),
              child: Text('Show SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () => _showCustomDialog(context),
              child: Text('Show CustomDialog'),
            ),
            ElevatedButton(
              onPressed: () => _showAboutDialog(context),
              child: Text('Show AboutDialog'),
            ),
          ],
        ),
      ),
    ));
  }
}



void _showSimpleDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: Text('Simple Dialog'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Option 1'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Option 2'),
          ),
        ],
      );
    },
  );
}
void _showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Custom Dialog', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 16.0),
              Text('This is a custom dialog.',style: TextStyle(fontSize: 18),),
              SizedBox(height: 16.0),
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert Dialog'),
        content: Text('This is an AlertDialog.'),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
void _showAboutDialog(BuildContext context) {
  showAboutDialog(
    context: context,
    applicationName: 'Flutter Dialog Demo',
    applicationVersion: '1.0.0+1',
    applicationIcon: FlutterLogo(size: 40),
    children: <Widget>[
      Text('This is an AboutDialog. It provides information about the application.'),
    ],
  );
}
