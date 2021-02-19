import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);

  Future<dynamic> getData() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
