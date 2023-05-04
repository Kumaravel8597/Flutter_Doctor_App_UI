import '../../../util/export.dart';

class BookNowBottomBar extends StatelessWidget {
  const BookNowBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 3, 38, 128),
            Color.fromRGBO(32, 0, 85, 1),
          ])),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      // padding: const EdgeInsets.all(7),
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(color: Colors.white, width: 1.5)),
                      child: getIcon(IconConst.whatsapp1, size: 25)),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      // padding: const EdgeInsets.all(7),
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(color: Colors.white, width: 1.5)),
                      child: getIcon(IconConst.house, size: 25)),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      // padding: const EdgeInsets.all(7),
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(color: Colors.white, width: 1.5)),
                      child: getIcon(IconConst.phone3, size: 25)),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(color: Colors.white, width: 1.5)),
              child: myText(
                'Book Now',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
