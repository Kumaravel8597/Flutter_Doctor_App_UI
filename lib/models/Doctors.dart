
import 'package:flutter/material.dart';

class DoctorDetailsCard {
  final String name, dept, rating,image;
  final GestureTapCallback press;
  DoctorDetailsCard(
      { required this.image,
        required this.name,
        required this.dept,
        required this.rating,
        required this.press});
}




List<DoctorDetailsCard> doctorDetails = [
  DoctorDetailsCard(
    image: "assets/icons/d1.png",
    press: () {}, dept: 'DDS', name: 'Ritha Ivy', rating: '',),
  DoctorDetailsCard(
    image: "assets/icons/d2.png",
    press: () {}, dept: 'DMD', name: 'James John', rating: '',),
  DoctorDetailsCard(
    image: "assets/icons/d3.png",
    press: () {}, dept: 'DDS', name: 'Kyle', rating: '',),
  DoctorDetailsCard(
    image: "assets/icons/d4.png",
    press: () {}, dept: 'DMD', name: 'John Micheal', rating: '',),
];