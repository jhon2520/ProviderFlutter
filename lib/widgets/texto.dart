import 'package:flutter/material.dart';
import 'package:practica_provider/provider/heroes_info.dart';
import 'package:practica_provider/provider/villanos_infor.dart';
import 'package:provider/provider.dart';

class Texto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final HeroeInfo heroeInfo = Provider.of<HeroeInfo>(context);
    final VillanoInfo villanoInfo = Provider.of<VillanoInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Heroe: ${heroeInfo.nombreHeroe}", style: TextStyle(color: heroeInfo.color),)),
        Center(child: Text("Villano: ${villanoInfo.nombreVillano}", style: TextStyle(color: heroeInfo.color),)),
      ],
    );
  }
}