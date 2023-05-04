import 'package:flutter/material.dart';

class TestsModelClass {
  final String imageUrl;
  final int testId;
  final String testName;
  final int testPrice;
  final List<Color>? colors;

  TestsModelClass({required this.imageUrl, required this.testId, required this.testName, required this.testPrice, this.colors});

  factory TestsModelClass.parseResponse(dynamic data) {
    return TestsModelClass(
      imageUrl: data[''],
      testId: data['test_id'],
      testName: data[''],
      testPrice: data['test_price'],
    );
  }

  Map<String, dynamic> getMap() => {
        '': imageUrl,
        'test_id': testId,
        'test_name': testName,
        'test_price': testPrice,
      };
}

List<TestsModelClass> dummyTests = [
  TestsModelClass(imageUrl: 'assets/icons/tests/xray.png', testId: 1, testName: 'Dental X-Ray', testPrice: 500, colors: myColors[0]),
  TestsModelClass(imageUrl: 'assets/icons/tests/cavity.png', testId: 2, testName: 'Cavity Test', testPrice: 1000, colors: myColors[1]),
  TestsModelClass(imageUrl: 'assets/icons/tests/gingivit.png', testId: 3, testName: 'Gingivtis Or Gum Test', testPrice: 200, colors: myColors[2]),
  TestsModelClass(imageUrl: 'assets/icons/tests/boneloose.png', testId: 4, testName: 'Bone Loss Test', testPrice: 1500, colors: myColors[0]),
  TestsModelClass(imageUrl: 'assets/icons/tests/oralcancer.png', testId: 5, testName: 'Orac Cancer Test', testPrice: 300, colors: myColors[1]),
  TestsModelClass(imageUrl: 'assets/icons/tests/gingivit.png', testId: 3, testName: 'Oral Hygin Test', testPrice: 200, colors: myColors[2]),
];

List<List<Color>> myColors = [
  [const Color.fromRGBO(5, 75, 255, 1), const Color.fromRGBO(0, 8, 112, 1)],
  [const Color.fromRGBO(0, 55, 195, 1), const Color.fromRGBO(177, 0, 138, 1)],
  [const Color.fromRGBO(255, 132, 18, 1), const Color.fromRGBO(177, 0, 138, 1)],
];
