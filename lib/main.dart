import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pokeka_1/Home.dart';
import 'package:pokeka_1/Login.dart';
import 'package:pokeka_1/app.dart';
import 'package:pokeka_1/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            // すプラッシュ画面などに置き換えてもいい
            return const SizedBox();

          if (snapshot.hasData) {
            // User が null ではない、つまりサインイン済みのホーム画面へ
            return MystatefullWidget();
          }

          return LoginPage();
        },
      ),
    );
}


// class MystatefullWidget extends StatefulWidget {
//   const MystatefullWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MystatefullWidget> createState() => _MystatefullWidgetState();
// }
//
// class _MystatefullWidgetState extends State<MystatefullWidget> {
//   static const _screens = [
//     HomePage(),
//   ];
//
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.view_carousel_outlined), label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.note_add_outlined), label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.auto_graph_outlined), label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle), label: ""),
//         ],
//         type: BottomNavigationBarType.fixed,
//       ),
//     );
//   }
// }