

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> audioRecordApi({
  required String audioPath,
}) async{

  var request = http.MultipartRequest('POST', Uri.parse('http://192.168.1.153:5000/check-audio'));

  request.files.add(await http.MultipartFile.fromPath('file', audioPath));

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