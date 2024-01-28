class NumToDigits {
  List<String> words;
  NumToDigits(this.words);
  Map<String, int> numDictionary = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };

  Set<int> findNumber(List<String> words) {
    final result = <int>{};
    for (String word in words) {
      if (numDictionary.containsKey(word)) {
        result.add(numDictionary[word]!);
      }
      ;
    }
    return result;
  }
}

void main() {
  List<String> words = ['one', 'two', 'three', 'lol'];
  NumToDigits converter = NumToDigits(words);
  print(converter.findNumber(words));
}
