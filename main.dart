class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor (done for you)
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // EXAMPLE: getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: getter for balance
  int get balance {
    return _balance;
  }

  // EXAMPLE: setter for owner, with a rule
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // EXAMPLE: a method
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: topUp
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: pay
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}
class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor (done for you)
  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
    _discount = discount;
  }

  // EXAMPLE: override showInfo
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: override pay
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}
void main() {
  // My numbers: D = 26, L = 6
  // Starting balance = 1260 RWF, Bus fare = 226 RWF, Discount = 16%

  BusCard card = BusCard('Claudine', 1260);
  card.owner = 'Al'; // refused: name too short
  card.showInfo();

  // TODO 5
  card.owner = 'Nyirambarushimana Claudine';
  card.showInfo();

  // TODO 6
  card.topUp(100);
  card.topUp(2000);

  // TODO 7
  card.pay(226);
  card.pay(226);
  card.showInfo();

  // TODO 8
  StudentCard student = StudentCard('Nyirambarushimana Claudine', 1260, 16);

  // TODO 9
  student.pay(226);
  student.showInfo();
}