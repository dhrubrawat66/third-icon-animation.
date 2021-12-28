import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:three/widgets/button_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Animation of Icon";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 1080,
          height: 80,
          child: Row(
            children: const [
              ButtonWidget(
                containerColor: Colors.blue,
                text: "Facebook",
                icon: FontAwesomeIcons.facebookF,
              ),
              VerticalDivider(width: 5.0, color: Colors.black),
              ButtonWidget(
                containerColor: Colors.pink,
                text: "Twitter",
                icon: FontAwesomeIcons.twitter,
              ),
              VerticalDivider(width: 5.0, color: Colors.black),
              ButtonWidget(
                containerColor: Colors.purpleAccent,
                text: "Google",
                icon: FontAwesomeIcons.google,
              ),
              VerticalDivider(width: 5.0, color: Colors.black),
              ButtonWidget(
                containerColor: Colors.cyanAccent,
                text: "Instagram",
                icon: FontAwesomeIcons.instagram,
              ),
              VerticalDivider(width: 5.0, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
