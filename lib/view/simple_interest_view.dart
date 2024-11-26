import 'package:flutter/material.dart';
import 'package:simple_calculator_application/widget/boxspace_widget.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double p = 0.0;
  double r = 0.0;
  double t = 0.0;
  double si = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => p = double.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Principal:',
              ),
              keyboardType: TextInputType.number,
            ),
            space8y,
            TextField(
              onChanged: (value) => t = double.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Time in year:',
              ),
              keyboardType: TextInputType.number,
            ),
            space8y,
            TextField(
              onChanged: (value) => r = double.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Rate:',
              ),
              keyboardType: TextInputType.number,
            ),
            space8y,
            Text(
              "Interest is: $si",
              style: const TextStyle(fontSize: 22),
            ),
            space8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      si = p * t * r / 100;
                    });
                  },
                  child: const Text("Calculate")),
            ),
          ],
        ),
      ),
    );
  }
}
