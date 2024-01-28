class Collection {
  convertToMap(a) {
    Map<String, int> result = {};

    for (String item in a) {
      if (result.containsKey(item)) {
        result[item] = result[item]! + 1;
      } else {
        result[item] = 1;
      }
    }
    print(result);
  }
}

void main() {
  List<String> words = ['msi', 'mac', 'dell', 'lenovo', 'hp', 'hp', 'dell'];
  Collection collection = Collection();
  collection.convertToMap(words);
}
