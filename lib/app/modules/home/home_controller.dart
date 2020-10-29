import 'package:firstmodular/app/modules/home/models/pokemon_model.dart';
import 'package:firstmodular/app/modules/home/repositories/pokemon_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokemonRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase(this.repository) {
    fetchPokemons();
  }

  @action
  fetchPokemons(){
    pokemons = repository.getPokemon().asObservable();
  }
}
