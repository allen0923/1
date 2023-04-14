import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;
  Future getData() async{
    try{
      Uri url = Uri.parse('your_url_here');
      http.Response response = await http.get(url);
      if(response.statusCode==200){
        String data = response.body;
        return jsonDecode(data);
      }else{
        print(response.statusCode);
        return;
      }
    } catch(e){
      return "empty";
    }
  }
}

