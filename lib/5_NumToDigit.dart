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
  findNumber(words) {
    for (String word in words) {
      if (numDictionary.containsKey(word)) {
        print(numDictionary[word]);
      }
      ;
    }
  }
}

void main() {
  List<String> words = ['one', 'two', 'free', 'lol'];
  NumToDigits converter = NumToDigits(words);
  converter.findNumber(words);
}
