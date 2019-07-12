import 'package:flutter/material.dart';
import 'package:pokemon_api/pokemon.dart';

class PokemonDetails extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetails({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(pokemon.name),
      ),
      backgroundColor: Colors.cyan,
    );
  }
}
