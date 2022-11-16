import 'dart:math';

class randomNumber {
  randomNumber({required this.min, required this.max});

  final int min;
  final int max;

  String generateNumber() {
    final random = new Random();
    final intRandom = Random().nextInt(max + 1 - min) + min;
    return intRandom.toStringAsFixed(0);
  }
}
