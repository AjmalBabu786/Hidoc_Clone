import 'dart:developer';

import 'package:hidoc/modal/modal.dart';
import 'package:http/http.dart' as http;

class NetWorkService {
  static Future<Prodect> fetchData() async {
    final url = "http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid";
    final uri = Uri.parse(url);
    final res = await http.post(uri);

    final json = prodectFromJson(res.body);
    log(json.toString());
    return json;
  }
}
