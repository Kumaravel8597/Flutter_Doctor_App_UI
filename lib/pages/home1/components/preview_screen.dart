import 'package:flutter_svg/svg.dart';

import '../../../util/export.dart';

class PreviewSection extends StatelessWidget {
  PreviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        getIcon(IconConst.facemask, size: 25),
        const SizedBox(height: 5),
        Text(
          'DOCTOR - DENTIST',
          style: TextStyle(
              fontSize: 12,
              // color: widget.headerTween.value,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quicksand'),
        ),
        const SizedBox(height: 5),
        Text(
          'At Your Service',
          style: TextStyle(
              fontSize: 12,
              // color: widget.headerTween.value,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quicksand'),
        ),
        Image.asset(
          "assets/icons/preview.png",
          width: double.infinity,
          height: 550,
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}
