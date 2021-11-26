import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewHome(),
    );
  }
}

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my first app"),
      ),
      body: Column(
        children: [
          Text("This is body"),
          Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Rain-Drops-on-Lotus-Flowers-Wallpapers-HD-Pictures.jpg/300px-Rain-Drops-on-Lotus-Flowers-Wallpapers-HD-Pictures.jpg'),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "What is my name",
              icon: Icon(Icons.add_to_home_screen),
            ),
          ),
          ElevatedButton(
            onPressed: submitButton,
            child: Text("Submit"),
          ),
          // RaisedButton(
          //   onPressed: submitButton,
          //   child: Text("Submit"),
          // )
        ],
      ),
    );
  }

  final flower = TextEditingController();
  void submitButton() {}
}
