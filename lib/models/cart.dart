import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  // catalog field
  CatalogModel? _catalog;

  // collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  get catalog => this._catalog;

  set catalog(value) => this._catalog = value;

  // get items in the cart
  List<Item> get items =>
      _itemIds.map((id) => CatalogModel.getById(id)).toList();

  // get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
