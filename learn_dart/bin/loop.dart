void main() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  var callbacks = [];

  for (var i = 0; i < 5; i++) {
    callbacks.add(() => print(i));
  }
  for (var c in callbacks) {
    c();
  }
  var candidates = [];
  for (var c in candidates) {
    if (c.yearsExperience >= 5) c.interview();
  }
  // tuong tu nhu tren
  candidates
      .where((c) => c.yearsExperience >= 5)
      .forEach((c) => c.interview());
}
