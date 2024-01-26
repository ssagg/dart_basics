class DecimalToBinary {
  String calc(int decimal) {
    String binary = '';
    while (decimal > 0) {
      int dev = decimal % 2;
      binary = dev.toString() + binary;
      decimal ~/= 2;
    }
    return binary;
  }
}

void main() {
  DecimalToBinary calc = DecimalToBinary();
  print(calc.calc(1024));
}
