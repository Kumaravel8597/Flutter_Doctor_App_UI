import '../constants/model_constants/doctor_details_constants.dart';

class DoctorBasicDetails {
  final int doctorId;
  final String name;
  final String imageUrl;
  final String spelization;
  final double ratings;
  final int experience;
  final String description;
  final int patientsTreated;
  final int ageGroupStart;
  final int ageGroupEnd;
  final int googleReviewsCount;

  DoctorBasicDetails({
    required this.doctorId,
    required this.name,
    required this.imageUrl,
    required this.spelization,
    required this.ratings,
    required this.experience,
    required this.description,
    required this.patientsTreated,
    required this.ageGroupStart,
    required this.ageGroupEnd,
    required this.googleReviewsCount,
  });

  factory DoctorBasicDetails.parseResponse(dynamic data) {
    return DoctorBasicDetails(
      doctorId: data[DoctorDetailsConstants.doctorId],
      name: data[DoctorDetailsConstants.name],
      imageUrl: data[DoctorDetailsConstants.imageUrl],
      spelization: data[DoctorDetailsConstants.spelization],
      ratings: data[DoctorDetailsConstants.ratings],
      experience: data[DoctorDetailsConstants.experience],
      description: data[DoctorDetailsConstants.description],
      patientsTreated: data[DoctorDetailsConstants.patientsTreated],
      ageGroupStart: data[DoctorDetailsConstants.ageGroupStart],
      ageGroupEnd: data[DoctorDetailsConstants.ageGroupEnd],
      googleReviewsCount: data[DoctorDetailsConstants.googleReviewsCount],
    );
  }

  Map<String, dynamic> getMap() => {
        DoctorDetailsConstants.doctorId: doctorId,
        DoctorDetailsConstants.name: name,
        DoctorDetailsConstants.imageUrl: imageUrl,
        DoctorDetailsConstants.spelization: spelization,
        DoctorDetailsConstants.ratings: ratings,
        DoctorDetailsConstants.experience: experience,
        DoctorDetailsConstants.description: description,
        DoctorDetailsConstants.patientsTreated: patientsTreated,
        DoctorDetailsConstants.ageGroupStart: ageGroupStart,
        DoctorDetailsConstants.ageGroupEnd: ageGroupEnd,
        DoctorDetailsConstants.googleReviewsCount: googleReviewsCount,
      };
}

DoctorBasicDetails doctorBasicDetailsDummy = DoctorBasicDetails(
  doctorId: 0,
  name: 'Shivani Sharma',
  imageUrl: "assets/images/doctor-img.png",
  spelization: 'BDS, MDS',
  ratings: 4.8,
  experience: 10,
  description:
      "Lorem Ipsum is simply dummy text of the printing. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  patientsTreated: 50,
  ageGroupStart: 8,
  ageGroupEnd: 75,
  googleReviewsCount: 500,
);
