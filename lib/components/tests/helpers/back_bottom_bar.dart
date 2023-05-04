import 'package:doctor_app/util/export.dart';

class BackBottomBar extends StatelessWidget {
  String title;
  BackBottomBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 3, 38, 128),
              Color.fromRGBO(32, 0, 85, 1),
            ])),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(color: Colors.white, width: 1.5)),
            child: Center(
              child: myText(title,
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
