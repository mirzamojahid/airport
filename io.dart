import 'dart:convert';
import 'dart:io';

main() async {
  File file = new File('airports.json');
  var data = await file.readAsString();
  var response = jsonDecode(data.toString());
  int count = 0;
  for (int x = 0; x < response.length; x++) {
    //  response[x].remove('iso');
    //  response[x].remove('status');
    // response[x].remove('continent');
    //  response[x].remove('type');
    // response[x].remove('lat');
    // response[x].remove('size');
      print(response[x]['name']);

    if (response[x]['name'] == null) {
      response.removeAt(x);
      //  print(response[x]);
      count += 1;
    }

    response[x]['country'] = "";

  }
  print(response.length);
  await file.writeAsString((jsonEncode(response)));
}
//small:2485
//medium:3556
//large: 505