import 'package:dio/dio.dart';
import 'package:firstmodular/app/modules/home/models/pokemon_model.dart';

class PokemonRepository {
  final Dio dio;

  PokemonRepository(this.dio);

  Future<List<PokemonModel>> getPokemon() async {

    var response = await dio.get("/pokemon/ditto");
    List<PokemonModel> list = [];

    for(var json in (response.data['abilities'] as List)) {
      PokemonModel model = PokemonModel(name: json['ability']['name']);
      list.add(model);
    }
    
    return list;
  }
}