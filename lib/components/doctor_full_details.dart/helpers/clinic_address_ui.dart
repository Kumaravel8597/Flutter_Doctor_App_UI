import '../../../util/export.dart';


class ClinicAddressAndMap extends StatefulWidget {
  final DoctorAddress address;
  const ClinicAddressAndMap(this.address, {Key? key}) : super(key: key);

  @override
  State<ClinicAddressAndMap> createState() => _ClinicAddressAndMapState();
}

class _ClinicAddressAndMapState extends State<ClinicAddressAndMap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 15, left: 15),
              child: myText(
                'Clinic Address',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 15, right: 20),
          child: clinicAddressCard(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 15, right: 20),
          child: map(),
        )
      ],
    );
  }

  Widget clinicAddressCard() {
    return Container(
        height: 125,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber.shade800,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  // getIcon(IconConst.pinDrop),
                  const Icon(
                    Icons.location_on_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                  horizontalSpace(),
                  myText(
                    widget.address.clinicName.toUpperCase(),
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: myText('${widget.address.doorNo}, ${widget.address.address},', color: Colors.white, fontSize: 16),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: GestureDetector(
                    onTap: () {
                      launch("tel://+91 ${widget.address.phoneNo}");
                    },
                    child: Row(
                      children: [
                        myText('Phone :  ', color: Colors.white, fontSize: 16),
                        myText(
                          '+91 ${widget.address.phoneNo}',
                          color: Color.fromARGB(255, 33, 243, 173),
                          fontSize: 16,
                        )
                      ],
                    )))
          ],
        ));
  }

  Widget map() {
    return Container(
        height: 150,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 175, 171, 166),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: const Image(
          image: AssetImage('assets/icons/map.png'),
          fit: BoxFit.fill,
        )

        // const GoogleMapUi()
        );
  }
}
