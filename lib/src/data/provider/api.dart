// get put delet tarzında işlemler burada yapılır

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qnbfinansbank_getx/src/constants/endpoints.dart';
import 'package:qnbfinansbank_getx/src/data/model/model.dart';
import 'package:qnbfinansbank_getx/src/data/model/photos_model.dart';

class MyApiClient {
  MyApiClient({required this.httpClient});
  final http.Client httpClient;

  getAll() async {
    try {
      var response =
          await httpClient.get(Uri.parse(EndPoint.base_url + EndPoint.posts));

      if (response.statusCode == 200) {
        Iterable jsonReponse = json.decode(response.body);

        List<MyModel> listMyModel =
            jsonReponse.map((e) => MyModel.fromJson(e)).toList();
        return listMyModel;
      } else {
        print('error');
      }
    } catch (_) {}
  }

  // get photos from api
  getPhotos() async {
    try {
      var response =
          await httpClient.get(Uri.parse(EndPoint.base_url + EndPoint.photos));
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<PhotosModel> listMyModel =
            jsonResponse.map((model) => PhotosModel.fromJson(model)).toList();
        return listMyModel;
      } else
        print('error');
    } catch (_) {}
  }

  getId(id) async {
    try {
      var response = await httpClient.get(Uri.parse('baseUrlid'));
      if (response.statusCode == 200) {
        //Map<String, dynamic> jsonResponse = json.decode(response.body);
      } else
        print('erro -get');
    } catch (_) {}
  }
}
