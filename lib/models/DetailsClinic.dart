class DetailsListItems {
  final String title;
  final dynamic num;
  final String desp;


  DetailsListItems({required this.title, required this.num,required this.desp});
}



List<DetailsListItems> detailsitems = [
  DetailsListItems(
      title: 'City',
      num: 1,
    desp: "We are committed to serve the people and our brand speaks for our reputation"
  ),
  DetailsListItems(
      title: 'Clinic',
      num: 1,
      desp: "Clinics are strategically located to fulfill the medical needs of the masses"
  ),
  DetailsListItems(
      title: 'Patient\nTreated',
      num: 1,
      desp: "Loyalty to serve the people has made us reach so far"
  ),
];