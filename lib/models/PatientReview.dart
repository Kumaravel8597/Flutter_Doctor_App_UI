class PatientReviewItems {
  final String name,image,content,drName,rating;
  PatientReviewItems({required this.name, required this.image,required this.content,required this.drName,required this.rating});
}



List<PatientReviewItems> patientReviewItems = [
  PatientReviewItems(
      name: 'EVAN JY',
      image: "assets/icons/reviewImg1.png",
      content: "Dentist was way too supportive and knowledgeable",
      drName:"Dr. Bob",
      rating:""
  ),
  PatientReviewItems(
      name: 'MIJO JOSE',
      image: "assets/icons/reviewImg2.png",
      content: "Dental Clinic really has modern equipments for better treatment",
      drName:"Dr. Serene",
      rating:""
  ),
  PatientReviewItems(
      name: 'JOHN PETER',
      image: "assets/icons/reviewImg3.png",
      content: "Hospitality and Treatment both were really good. I recommend this.",
      drName:"Dr. Serene",
      rating:""
  ),
];