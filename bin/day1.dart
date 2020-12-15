import 'dart:io';
import 'dart:convert';
import 'dart:core';

Future solutionB(list) async {
  var count = list.length;
  for (var i = 0; i < count; i++) {
    var a = list[i];
    var val1 = int.parse(a);
    for (var n = i + 1; n < count; n++) {
      var b = list[n];
      var val2 = int.parse(b);
      for (var m = n + 1; m < count; m++) {
        var c = list[m];
        var val3 = int.parse(c);
        var sum = val1 + val2 + val3;
        if (sum == 2020) {
          var mult = val1 * val2 * val3;
          print('Your final value is: ' '$mult');
          print('Your three values are: ' '$val1 ' '$val2 ' '$val2');
        }
      }
    }
  }
}

void main() {
  final file = File('./bin/file.txt');
  var inputStream = file.openRead();
  var list = [];

  var listen = inputStream
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()) // Convert stream to individual lines.
      .listen((String line) {
    // Process results.
    list.add(line); //adding values to array
  }, onDone: () {
    //
    //Begin doing calculation with array
    solutionB(list);
//
//
  }, onError: (e) {
    print(e.toString());
  });
}
