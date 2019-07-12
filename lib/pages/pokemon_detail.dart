import 'package:flutter/material.dart';
import 'package:pokemon_api/pokemon.dart';

class PokemonDetails extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetails({this.pokemon});

  bodyWidget() => Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text(pokemon.name),
      ),
      backgroundColor: Colors.cyan,
      body: bodyWidget(),
    );
  }
}
