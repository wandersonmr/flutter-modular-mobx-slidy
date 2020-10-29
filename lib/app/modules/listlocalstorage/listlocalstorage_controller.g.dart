// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listlocalstorage_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListlocalstorageController = BindInject(
  (i) => ListlocalstorageController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListlocalstorageController on _ListlocalstorageControllerBase, Store {
  final _$textAtom = Atom(name: '_ListlocalstorageControllerBase.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$listAtom = Atom(name: '_ListlocalstorageControllerBase.list');

  @override
  ObservableList<String> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<String> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_ListlocalstorageControllerBase.init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$_ListlocalstorageControllerBaseActionController =
      ActionController(name: '_ListlocalstorageControllerBase');

  @override
  dynamic setText(String value) {
    final _$actionInfo = _$_ListlocalstorageControllerBaseActionController
        .startAction(name: '_ListlocalstorageControllerBase.setText');
    try {
      return super.setText(value);
    } finally {
      _$_ListlocalstorageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void save() {
    final _$actionInfo = _$_ListlocalstorageControllerBaseActionController
        .startAction(name: '_ListlocalstorageControllerBase.save');
    try {
      return super.save();
    } finally {
      _$_ListlocalstorageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int index) {
    final _$actionInfo = _$_ListlocalstorageControllerBaseActionController
        .startAction(name: '_ListlocalstorageControllerBase.remove');
    try {
      return super.remove(index);
    } finally {
      _$_ListlocalstorageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
text: ${text},
list: ${list}
    ''';
  }
}
