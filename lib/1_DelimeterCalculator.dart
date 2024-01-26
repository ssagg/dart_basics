class DelimeterCalculator {
  int gcd(int a, int b) {
    while (b != 0) {
      int r = a % b;
      a = b;
      b = r;
    }
    return a;
  }

  double lcm(int a, int b) {
    return a / gcd(a, b) * b;
  }
}

void main() {
  DelimeterCalculator calc = DelimeterCalculator();
  int n1 = 11;
  int n2 = 15;
  int gcd = calc.gcd(n1, n2);
  double lcm = calc.lcm(n1, n2);
  print('GCD for $n1 and $n2 is $gcd');
  print('LCM for $n1 and $n2 is $lcm');
}
