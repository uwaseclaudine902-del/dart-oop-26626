## Part 5
My prediction: 1 and then 5

Why: For Bag, add() makes items 1. Then I tried to set items to -5,
but the setter only accepts values 0 or positive numbers , so it was refused and
items 1 remains . For BigBag, add() calls super.add() two times, so each
add() adds 2. I called add() twice, so items became 4. Then items = 4 + 1
= 5, which is allowed, so it prints 5.
therefore  the prediction is 1 and 5 
