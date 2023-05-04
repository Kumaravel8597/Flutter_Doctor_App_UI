import '../../../util/export.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Container(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {},
                    child: getIcon(IconConst.menu, size: 25),
                  ))),
          Expanded(
            child: Column(
              children: [
                getIcon(IconConst.facemask, size: 25),
                verticalSpace(2),
                myText("DOCTOR", fontSize: 9, fontWeight: FontWeight.bold),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                myText(("Madurai"), fontSize: 9, fontWeight: FontWeight.bold),
                horizontalSpace(5),
                getIcon(IconConst.pinDrop, size: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
