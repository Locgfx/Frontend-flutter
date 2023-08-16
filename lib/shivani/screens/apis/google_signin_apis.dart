import 'dart:convert';
import 'dart:developer';


import 'package:http/http.dart' as http;



Future<dynamic> googleSignInApi({
  required String idToken,
}) async {
  var request = http.Request('GET', Uri.parse('https://oauth2.googleapis.com/tokeninfo?id_token=$idToken'));


  http.StreamedResponse response = await request.send();
  var resBody = jsonDecode(await response.stream.bytesToString());

  if (response.statusCode == 200) {
    print(resBody);
    return resBody;

  }
  else {
    print(response.reasonPhrase);
    print(response.statusCode);
    print(resBody);
    return false;
  }


}