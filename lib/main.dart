import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/home/view/home_view.dart';
import 'package:tourism1/routes/pages.dart';
import 'package:tourism1/routes/routes.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.tourismFeed,
      getPages: Pages.routes,
      theme: AppThemes.whiteTheme,
      debugShowCheckedModeBanner: false,
      title: 'Tourism App',

    );
  }
}

