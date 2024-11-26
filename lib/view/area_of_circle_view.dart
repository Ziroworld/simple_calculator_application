import 'package:flutter/material.dart';
import 'package:simple_calculator_application/widget/boxspace_widget.dart';
import 'dart:math';

class AreaOfCircleView extends StatefulWidget {
  const AreaOfCircleView({super.key});

  @override
  State<AreaOfCircleView> createState() => _AreaOfCircleViewState();
}

class _AreaOfCircleViewState extends State<AreaOfCircleView> {
  double radius = 0;
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => radius = double.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "radius",
              ),
              keyboardType: TextInputType.number,
            ),
            space8y,
            Text(
              "Area of Circle is: ${area.toStringAsFixed(3)}",
              style: const TextStyle(fontSize: 22),
            ),
            space8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    area = 3.14 * pow(radius, 2);
                  });
                },
                child: const Text("Calculate"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
