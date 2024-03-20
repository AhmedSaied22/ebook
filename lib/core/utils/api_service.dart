// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await _dio.get('$_baseUrl$endPoint');
    Map<String, dynamic> data = response.data;
    return data;
  }
}
