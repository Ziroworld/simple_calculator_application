import 'package:flutter/material.dart';
import 'package:simple_calculator_application/widget/boxspace_widget.dart';

class ArithemeticView extends StatefulWidget {
  const ArithemeticView({super.key});

  @override
  State<ArithemeticView> createState() => _ArithemeticViewState();
}

class _ArithemeticViewState extends State<ArithemeticView> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => first = int.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First number",
              ),
              keyboardType: TextInputType.number,
            ),
            space8y,
            TextField(
              onChanged: (value) => second = int.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Second number",
              ),
              keyboardType: TextInputType.number,
            ),
            space8y,
            Text(
              "Result: $result",
              style: const TextStyle(fontSize: 22),
            ),
            space8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first + second;
                    });
                  },
                  child: const Text("Addition")),
            ),
            space8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first - second;
                    });
                  },
                  child: const Text("Subtraction")),
            ),
            space8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first * second;
                    });
                  },
                  child: const Text("Multiplication")),
            ),
            space8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = (first ~/ second);
                    });
                  },
                  child: const Text("Division")),
            ),
          ],
        ),
      ),
    );
  }
}
