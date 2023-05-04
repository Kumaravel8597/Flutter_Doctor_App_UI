
import '../constants/model_constants/doctor_details_constants.dart';
import 'doctor_basic_detsils.dart';

class DoctorDetails {
  final DoctorBasicDetails details;
  final DoctorAddress? doctorAddress;
  final MoreAboutDoctor? moreAboutDoctor;

  DoctorDetails({
    required this.details,
    required this.doctorAddress,
    required this.moreAboutDoctor,
  });
  factory DoctorDetails.parseResponse(dynamic data) {
    return DoctorDetails(
      details: data[DoctorDetailsConstants.details] ?? DoctorBasicDetails.parseResponse(data),
      doctorAddress: data[DoctorDetailsConstants.doctorAddress] == null ? null : DoctorAddress.parseResponse(data[DoctorDetailsConstants.doctorAddress]),
      moreAboutDoctor:
          data[DoctorDetailsConstants.moreAboutDoctor] == null ? null : MoreAboutDoctor.parseResponse(data[DoctorDetailsConstants.moreAboutDoctor]),
    );
  }

  Map<String, dynamic> getMap() => {
        DoctorDetailsConstants.details: details.getMap(),
        DoctorDetailsConstants.doctorAddress: doctorAddress?.getMap(),
        DoctorDetailsConstants.moreAboutDoctor: moreAboutDoctor?.getMap(),
      };
}


class DoctorAddress {
  final String clinicName;
  final String doorNo;
  final String address;
  final int zipCode;
  final int phoneNo;

  DoctorAddress({
    required this.clinicName,
    required this.doorNo,
    required this.address,
    required this.zipCode,
    required this.phoneNo,
  });

  factory DoctorAddress.parseResponse(dynamic data) {
    return DoctorAddress(
      clinicName: data[DoctorDetailsConstants.clinicName],
      doorNo: data[DoctorDetailsConstants.doorNo],
      address: data[DoctorDetailsConstants.address],
      zipCode: data[DoctorDetailsConstants.zipCode],
      phoneNo: data[DoctorDetailsConstants.phoneNo],
    );
  }

  Map<String, dynamic> getMap() => {
        DoctorDetailsConstants.clinicName: clinicName,
        DoctorDetailsConstants.doorNo: doorNo,
        DoctorDetailsConstants.address: address,
        DoctorDetailsConstants.zipCode: zipCode,
        DoctorDetailsConstants.phoneNo: phoneNo,
      };
}

class MoreAboutDoctor {
  final String specialization;
  final String education;
  final String experience;
  final String awardsAndAchievements;
  final String memberShip;
  final String registration;

  MoreAboutDoctor({
    required this.specialization,
    required this.education,
    required this.experience,
    required this.awardsAndAchievements,
    required this.memberShip,
    required this.registration,
  });

  factory MoreAboutDoctor.parseResponse(dynamic data) {
    return MoreAboutDoctor(
        specialization: data[DoctorDetailsConstants.specialization],
        education: data[DoctorDetailsConstants.educationDetails],
        experience: data[DoctorDetailsConstants.experienceDetails],
        awardsAndAchievements: data[DoctorDetailsConstants.awardsAndAchievements],
        memberShip: data[DoctorDetailsConstants.memberShip],
        registration: data[DoctorDetailsConstants.registration]);
  }
  Map<String, dynamic> getMap() => {
        DoctorDetailsConstants.specialization: specialization,
        DoctorDetailsConstants.educationDetails: education,
        DoctorDetailsConstants.experienceDetails: experience,
        DoctorDetailsConstants.awardsAndAchievements: awardsAndAchievements,
        DoctorDetailsConstants.memberShip: memberShip,
        DoctorDetailsConstants.registration: registration,
      };
}











DoctorDetails dummyDoctorData = DoctorDetails(
  details: doctorBasicDetailsDummy,
  doctorAddress: DoctorAddress(
      clinicName: "Doctor world clinic", doorNo: "4/347", address: "Aanapura colony, Koramangala, Bangalore", zipCode: 542310, phoneNo: 9000478883),
  moreAboutDoctor: MoreAboutDoctor(
    specialization:
        "It is a long established fact  their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    education:
        "There are many variations of passages of Lorem Ipsum  generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
    experience:
        "Sed vulputate libero mollis ullamcorper sodales.  maximus consequat semper. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum vitae erat magna.",
    awardsAndAchievements:
        "Mauris a pharetra eros. Vivamus sodales laoreet elit . Phasellus erat ex, aliquam ac venenatis eget, tincidunt eu orci. Vestibulum et faucibus lacus, eget egestas justo.",
    memberShip:
        "Vivamus at ornare lorem. Morbi urna neque, gravida at pellentesq tincidunt leo nibh ut leo. Fusce pretium augue eu facilisis luctus. Vivamus at nisl eget est auctor posuere.",
    registration:
        "Proin urna mauris, efficitur at libero sed, vehicula tempus  blandit scelerisque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.",
  ),
);
