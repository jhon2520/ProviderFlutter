import 'package:flutter/material.dart';
import 'package:practica_provider/pages/home_page.dart';
import 'package:practica_provider/provider/heroes_info.dart';
import 'package:practica_provider/provider/villanos_infor.dart';
import 'package:provider/provider.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HeroeInfo()),
        ChangeNotifierProvider(create: (context) => VillanoInfo()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Provider",
        initialRoute: "home",
        routes: {
          "home":(_)=> HomePage()
        },
      ),
    );




    // ** Este sería para el caso que sólo tenga un archivo provider
/*
    return ChangeNotifierProvider(
      create: (context) => HeroeInfo(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Provider",
        initialRoute: "home",
        routes: {
          "home":(_)=> HomePage()
        },
      ),
    );

  */
  }
}

