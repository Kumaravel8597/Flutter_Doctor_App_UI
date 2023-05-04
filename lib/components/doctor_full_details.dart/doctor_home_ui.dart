import 'package:doctor_app/util/export.dart';

import 'helpers/appointment_booking_ui.dart';
import 'helpers/clinic_address_ui.dart';
import 'helpers/doctor_details_card_ui.dart';
import 'helpers/doctor_ui_header.dart';
import 'helpers/fixed_bottom_bar.dart';
import 'helpers/more_about_doctor_ui.dart';
import 'helpers/patient_review.dart';

class DoctorHomeUi extends StatefulWidget {
  const DoctorHomeUi({Key? key}) : super(key: key);

  @override
  State<DoctorHomeUi> createState() => _DoctorHomeUiState();
}

class _DoctorHomeUiState extends State<DoctorHomeUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: const BookNowBottomBar(),
        body: Column(
          children: [
            const Header(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 70),
              child: Column(children: [
                DoctorBasicInfo(dummyDoctorData.details),
                const AppointmentBookingUi(),
                if (dummyDoctorData.doctorAddress != null)
                  ClinicAddressAndMap(dummyDoctorData.doctorAddress!),
                PatientReview(dummyDoctorData.details),
                if (dummyDoctorData.moreAboutDoctor != null)
                  MoreAboutDoctorUi(dummyDoctorData.moreAboutDoctor!)
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
