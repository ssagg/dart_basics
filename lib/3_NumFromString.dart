class NumFromString {
  findNums(String a) {
    var numbers = [];
    for (var element in a.split(' ')) {
      var value = int.tryParse(element);
      if (value is int) {
        numbers.add(value);
      }
    }
    print('String has this numbers: $numbers');
  }
}

void main() {
  String words = 'asd 3 cool my 45 book nice 32';
  NumFromString result = NumFromString();
  result.findNums(words);
}
