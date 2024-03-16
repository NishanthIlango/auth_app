import 'package:auth_app/firebase_options.dart';
import 'package:auth_app/provider/auth_provider.dart';
import 'package:auth_app/provider/user_info_provider.dart';
import 'package:auth_app/screen/authentication_screen.dart';
import 'package:auth_app/screen/home_page.dart';
import 'package:auth_app/screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_)=>UserInfoProvider()), //ChangeNotifierProvider<UserModel>(create: (_)=> UserModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2)),
            ),
            textTheme: const TextTheme(
                headlineLarge: TextStyle(fontWeight: FontWeight.bold))),
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) =>  SplashScreen(),
          AuthenticationScreen.routeName: (context) =>
              const AuthenticationScreen(),
          HomePage.routeName: (context) =>  HomePage(),
        },
      ),
    );
  }
}
