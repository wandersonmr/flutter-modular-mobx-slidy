import 'package:firstmodular/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'listlocalstorage_controller.g.dart';

@Injectable()
class ListlocalstorageController = _ListlocalstorageControllerBase
    with _$ListlocalstorageController;

abstract class _ListlocalstorageControllerBase with Store {
  final ILocalStorage _storage = Modular.get();

  @observable
  String text = '';

  @action
  setText(String value) => text = value;

  @observable
  ObservableList<String> list = <String>[].asObservable();

  _ListlocalstorageControllerBase(){
    init();
  }
  
  @action
  init() async {
    List<String> listLocal = await _storage.get('list');

    if(listLocal == null) {
      list = <String>[].asObservable(); 
    } else {
      list = listLocal.asObservable();
    }
  }

  @action
  void save() {
    list.add(text);
    _storage.put('list', list);
  }

  @action
  void remove(int index) {
    list.removeAt(index);
    _storage.put('list', list);
  }
}
