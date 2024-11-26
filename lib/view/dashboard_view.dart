import 'package:flutter/material.dart';
import 'package:simple_calculator_application/widget/boxspace_widget.dart';
import 'package:simple_calculator_application/view/area_of_circle_view.dart';
import 'package:simple_calculator_application/view/arithemetic_view.dart';
import 'package:simple_calculator_application/view/simple_interest_view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AreaOfCircleView()));
                        },
                        child: const Text("Area of circle"),
                      ),
                    ),
                    space8y,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ArithemeticView()));
                        },
                        child: const Text("Arthemetic"),
                      ),
                    ),
                    space8y,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SimpleInterestView()));
                        },
                        child: const Text("Simple Intrest View"),
                      ),
                    ),
                  ],
                ))));
  }
}
