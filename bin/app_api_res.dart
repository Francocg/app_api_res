import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  final url = Uri.parse('http://localhost:3000/api/listar');
  http.get(url).then((res) {
    final body = convert.jsonDecode(res.body);
    for (int i = 0; i < 5; i++) {
      print('${body['usuarios'][i]['titulo']}');
    }
  });
}
