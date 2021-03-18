import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future<dynamic> getData() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
