import 'package:flutter/material.dart';
import 'package:pokemon_api/pokemon.dart';

class PokemonDetails extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetails({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text(pokemon.name),
      ),
      
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(pokemon.name),
                Text("Height: ${pokemon.height}"),
                Text("Weight: ${pokemon.weight}"),
                Text("Types"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.type
                      .map((t) => FilterChip(
                            label: Text(t),
                            onSelected: (b) {},
                          ))
                      .toList(),
                ),
                Text("Weakness"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.weaknesses
                      .map((t) => FilterChip(
                            label: Text(t),
                            onSelected: (b) {},
                          ))
                      .toList(),
                ),
                Text("Next Evolution"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.nextEvolution
                      .map((n) => FilterChip(
                            label: Text(n.name),
                            onSelected: (b) {},
                          ))
                      .toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
