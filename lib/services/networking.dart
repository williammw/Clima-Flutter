import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);

  Future<dynamic> getData() async {
    print('getData');
    //api.openweathermap.org/data/2.5/weather?lat=35&lon=139
    http.Response response = await http.get(url);
    print(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.body);
    }
  }
}
