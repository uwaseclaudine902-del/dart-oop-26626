class Bag {
  int _items = 0;

  int get items {
    return _items;
  }

  set items(int value) {
    if (value >= 0) {
      _items = value;
    }
  }

  void add() {
    _items = _items + 1;
  }
}

class BigBag extends Bag {
  @override
  void add() {
    super.add();
    super.add();
  }
}

void main() {
  Bag a = Bag();
  a.add();
  a.items = -5;
  print(a.items);

  BigBag b = BigBag();
  b.add();
  b.add();
  b.items = b.items + 1;
  print(b.items);
}