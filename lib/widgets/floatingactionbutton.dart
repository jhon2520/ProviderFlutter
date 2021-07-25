import 'package:flutter/material.dart';
import 'package:practica_provider/provider/heroes_info.dart';
import 'package:practica_provider/provider/villanos_infor.dart';
import 'package:provider/provider.dart';

class FloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final HeroeInfo heroeInfo = Provider.of<HeroeInfo>(context);
    final VillanoInfo villanoInfo = Provider.of<VillanoInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            heroeInfo.nombreHeroe = "Pepe le pu";
            villanoInfo.nombreVillano = "Aguapanela con limón";
            heroeInfo.color = Colors.red;
          },
          child: Icon(Icons.access_alarm),
          backgroundColor: Colors.red,
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            heroeInfo.nombreHeroe = "Mackbolas";
            villanoInfo.nombreVillano = "Tengo la camisa negra";
            heroeInfo.color = Colors.blue;
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}
