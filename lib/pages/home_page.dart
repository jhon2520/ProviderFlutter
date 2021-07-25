import 'package:flutter/material.dart';
import 'package:practica_provider/provider/heroes_info.dart';
import 'package:practica_provider/widgets/floatingactionbutton.dart';
import 'package:practica_provider/widgets/texto.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final HeroeInfo heroInfo = Provider.of<HeroeInfo>(context);    

    return Scaffold(
      appBar: AppBar(
        title: Text(heroInfo.nombreHeroe),
      ),
      body: Texto(),
      floatingActionButton: FloatingAction(),
    );
  }
}