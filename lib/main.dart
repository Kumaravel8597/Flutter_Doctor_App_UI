import 'package:doctor_app/pages/home1/home_screen.dart';
import 'package:doctor_app/routes/routes.dart';
import 'package:doctor_app/util/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppInfo.applicationName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.transparent),
      ),
      // home: const SafeArea(child: HomeUi()),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
