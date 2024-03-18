import 'package:flutter/material.dart';
import 'package:png_test/textstyle.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            displaySmall: TextStyle(
              fontStyle: FontStyle.italic,
            )),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter  Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var namess = [
      'shreyash',
      'sahil',
      'aditya',
      'abhishek',
      'shubham',
      'rohit',
      'mane',
      'Dalvi',
    ];

    var date = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
            child: Column(children: [
              catItem(),



           Expanded(
            flex: 6,
            child: Container(
              height: 400,
              color: Colors.orange,
              child: ListView.builder(itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/banner2.jpg'),
                      backgroundColor: Colors.blueAccent,
                    ),
                    title: Text('namess[index]'),
                    trailing: Icon(Icons.add_a_photo),
                  ),
                );
              }),
            ),
          ),

           Tile2(),


            Tile3(),

        ])));
  }
}

class catItem extends StatelessWidget{

@override
  Widget build(BuildContext context){
  return Expanded(
    flex: 2,
    child: Container(
      height: 200,
      color: Colors.green,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const SizedBox(
            width: 100,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.yellow),
            )),
      ),
    ),
  );
}

}


class Tile2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 4,
      child: Container(
        height: 400,
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        )
      )
    );
  }
}


class Tile3 extends StatelessWidget{
  @override
Widget build(BuildContext context){
    return Expanded(

      flex: 3,
      child: Container(
        color: Colors.pink,
        child: GridView.count(
          crossAxisCount: 4,
          children: [


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(11)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(11)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(11)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(11)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(11)),
              ),
            ),






          ]

        )
      )
    );
  }
}

