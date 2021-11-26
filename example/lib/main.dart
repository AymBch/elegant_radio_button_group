import 'package:flutter/material.dart';
import 'package:elegant_radio_button_group/elegant_radio_button_group.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elegant Radio button group pacakge expample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int? selectedValue;
  @override
  void initState() {
    super.initState();
    selectedValue = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: ElegantRadioButton<int>(
                groupValue: selectedValue,
                value: 1,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                fillColor: MaterialStateProperty.all(Colors.red),
              ),
              title: const Text('Radio button 1'),
            ),
            ListTile(
              leading: ElegantRadioButton<int>(
                groupValue: selectedValue,
                value: 2,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                fillColor: MaterialStateProperty.all(const Color(0xFFFF9494)),
              ),
              title: const Text('Radio button 2'),
            ),
            ListTile(
              leading: ElegantRadioButton<int>(
                groupValue: selectedValue,
                value: 3,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                fillColor: MaterialStateProperty.all(const Color(0xFFFFDCDC)),
              ),
              title: const Text('Radio button 3'),
            ),
          ],
        ),
      ),
    );
  }
}
