 import 'dart:math';

class ListHelper{
   static List<int> generateRandomItems() {
     Random random = Random();
     int itemCount = random.nextInt(5) + 1; // Random item count between 1 and 5
     return List.generate(itemCount, (_) => random.nextInt(12)); // Items between 0 and 11
   }
 }