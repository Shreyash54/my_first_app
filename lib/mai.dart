import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      home: const MyHomePage(title: 'Flutter BMI Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController wtController = TextEditingController();
  final TextEditingController ftController = TextEditingController();
  final TextEditingController inchController = TextEditingController();
  String result = '';
  Color bgColor = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: bgColor,
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BMI Calculator',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                TextField(
                  controller: wtController,
                  decoration: const InputDecoration(labelText: 'Enter Weight in KG'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: ftController,
                  decoration: const InputDecoration(labelText: 'Enter Height in Feet'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: inchController,
                  decoration: const InputDecoration(labelText: 'Enter Height in Inches'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    calculateBMI();
                  },
                  child: const Text('Calculate BMI'),
                ),
                const SizedBox(height: 16),
                Text(
                  result,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    final double weight = double.tryParse(wtController.text) ?? 0;
    final double feet = double.tryParse(ftController.text) ?? 0;
    final double inches = double.tryParse(inchController.text) ?? 0;

    if (weight != 0 && feet != 0 && inches != 0) {
      final double totalInches = feet * 12 + inches;
      final double totalMeters = totalInches * 0.0254;
      final double bmi = weight / (totalMeters * totalMeters);

      setState(() {
        if (bmi > 25) {
          bgColor = Colors.redAccent;
          result = 'You are overweight\nYour BMI is ${bmi.toStringAsFixed(2)}';
        } else if (bmi < 18) {
          bgColor = Colors.lightGreenAccent;
          result = 'You are healthy\nYour BMI is ${bmi.toStringAsFixed(2)}';
        } else {
          bgColor = Colors.tealAccent;
          result = 'You are underweight\nYour BMI is ${bmi.toStringAsFixed(2)}';
        }
      });
    } else {
      setState(() {
        bgColor = Colors.deepPurpleAccent;
        result = 'Please fill in all details.';
      });
    }
  }
}
