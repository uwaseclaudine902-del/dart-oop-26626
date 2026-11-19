# Dart OOP Assignment: Kigali Bus Card

**Name:** Nyirambarushimana Claudine
**Student ID:** 26626

## My numbers
- D = 26, L = 6
- Starting balance = 1000 + (26 × 10) = 1260 RWF
- Bus fare = 200 + 26 = 226 RWF
- Student discount = 10 + 6 = 16%

## Output of main.dart
```
Error: name too short
Owner: Claudine | Balance: 1260 RWF
Owner: Nyirambarushimana Claudine | Balance: 1260 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 226 RWF
Paid 226 RWF
Owner: Nyirambarushimana Claudine | Balance: 2808 RWF
Student discount: 36 RWF
Paid 190 RWF
Owner: Nyirambarushimana Claudine | Balance: 1070 RWF
Student card: 16% off
```

## Part 1: Why no setter for balance?
If balance had a setter, anyone could write card.balance = 999999 and
give themselves free money. Without a setter, the balance can only change
through topUp, which checks the amount, and pay, which checks there is
enough money. This keeps the card safe.

## Part 2: What does ~/ do?
`/` is normal division and gives decimals: print(237 * 17 / 100) shows 40.29.
`~/` is integer division and drops the decimal part: print(237 * 17 ~/ 100)
shows 40. I use ~/ because money here is a whole number (int).

## Part 4: Bug table

| Bug | The line | Why it is wrong | Your fix |
|---|---|---|---|
| 1 | String _brand; and int _battery; | The fields had no starting value AND MUST BE INITIALIZE BEFORE USED | String _brand = ''; and int _battery = 0; |
| 2 | SmartPhone(String brand, int battery, String system) { | It did not call the parent constructor MEANS that the contructor musr correctly initialized the object field | Added : super(brand, battery) |
| 3 | @override void restart() | The parent Phone has no restart method | Removed @override |
| 4 | p.battery = 100; | There was no setter for battery | Added a setter that accepts 0 to 100 |
| 5 | print(p.battery()); | battery is a getter, so no () | print(p.battery); |

| Not a bug | Why is this line fine? |
|---|---|
| Phone p = new Phone('Tecno', 50); | In Dart, new is optional, so the line is allowed |
## Part 5
My prediction: 1 and then 5

Why: For Bag, add() makes items 1. Then I tried to set items to -5,
but the setter only accepts values 0 or positive numbers , so it was refused and
items 1 remains . For BigBag, add() calls super.add() two times, so each
add() adds 2. I called add() twice, so items became 4. Then items = 4 + 1
= 5, which is allowed, so it prints 5.
 the real output 1 and 5
  was i right yes i was  right because i run the code and get the same output which are 1 and 5
so the  the prediction is 1 and 5 
