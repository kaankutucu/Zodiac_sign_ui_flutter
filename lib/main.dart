import 'package:flutter/material.dart';
import 'package:flutter_zodiac_sign_ui_flutter/burc_detay.dart';
import 'package:flutter_zodiac_sign_ui_flutter/burc_liste.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Zodiac Sign",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListe",

      routes: {
        "/": (context) => BurcListe(),
        "/burcListe": (context) => BurcListe(),
         },
      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari =  settings.name.split("/");
        if (pathElemanlari[1] == 'burcDetay' ){
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null ;
      },
      theme: ThemeData(
        primaryColor: Colors.purple.shade400,
      ),

    );
  }
}
