import 'package:doctor_app/components/choose_date_time/choose_date_time_ui.dart';
import 'package:doctor_app/components/doctor_full_details.dart/doctor_home_ui.dart';
import 'package:flutter/material.dart';

import '../choose_problem/choose_problem_ui.dart';
import '../tests/test_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorHomeUi()));
                  },
                  child: const Text('Move To Doctor Details')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChooseDateTimeUi()));
                  },
                  child: const Text('Move To Choose Date Time')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestHomeUi()));
                  },
                  child: const Text('Tests')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChooseProblem()));
                  },
                  child: const Text('Choose Problem')),
            ],
          ),
        ),
      ),
    );
  }
}
