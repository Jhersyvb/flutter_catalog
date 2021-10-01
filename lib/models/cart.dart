import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;

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

  // remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store?.cart?._itemIds.add(item.id);
  }

}
