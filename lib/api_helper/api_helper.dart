import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHelper {
  Future<dynamic> getApi({required String url}) async{
    var uri = Uri.parse(url);
    http.Response res = await http.get(uri);

    print(res.statusCode);
    if (res.statusCode == 200) {
      var mData = jsonDecode(res.body);
      print(mData);
      return mData;
    }else {
      return null;
    }

  }
}