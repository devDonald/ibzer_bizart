import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibzer_bizart/screens/login.dart';
import 'package:ibzer_bizart/screens/second_home.dart';
import 'package:ibzer_bizart/screens/signup.dart';
import 'package:ibzer_bizart/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'helpers/firestore_service.dart';

final authId = AuthService();
//final authBloc = AuthBloc();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => authId),
        StreamProvider<User>.value(
          initialData: FirebaseAuth.instance.currentUser,
          value: FirebaseAuth.instance.authStateChanges(),
        ),
        // See implementation details in next sections
      ],
      child: MyApp(),
    ),
  );

  @override
  void dispose() {
    authId.dispose();
  }
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final deviceWidth = MediaQuery.of(context).size.width;
    //final deviceHeight = MediaQuery.of(context).size.height;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //default theme

      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/register': (context) => Signup(),
        //'/myProfile': (context) => MyProfile(),
        //'/editProfile': (context) => EditProfile(),
        //'/termsOfService': (context) => TermsOfService(),
        //'/privacyAndPolicy': (context) => PrivacyAndPolicy(),
        //'/about': (context) => AboutUs(),
        '/home': (context) => SecondHome(),
        //'/buyProduct': (context) => BuyProduct(),
        //'/construction': (context) => ConstructionMaterials(),
        //'/notification': (context) => NotificationCenter(),
      },
    );
  }
}
