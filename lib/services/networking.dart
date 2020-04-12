import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:clima/screens/loading_screen.dart';
class NetworkHelper{

  NetworkHelper(this.url);
  String url;

  Future getData() async {

//    print(longitude);
    print(url);
    http.Response response = await http.get(url);

    print(response.body);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);

      return decodedData;
    }
  }

}