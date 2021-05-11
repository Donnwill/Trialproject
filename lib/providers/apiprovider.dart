// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

// import 'dart:io';
// import 'dart:convert';
// import 'dart:async';

// import 'package:shared_preferences/shared_preferences.dart';

// import 'CustomException.dart';

// //final String _baseUrl = "http://10.0.2.2:8091/";
// final String _baseUrl = "http://52.207.15.170:8082/";

// class ApiProvider {
//   Future<dynamic> get(String url) async {
//     final prefs = await SharedPreferences.getInstance();
//     final accessToken = prefs.getString('token');

//     var responseJson;
//     try {
//       final response = await http.get(
//           _baseUrl + url + "?access_token=$accessToken",
//           headers: <String, String>{
//             'Content-Type': 'application/json; charset=UTF-8',
//             'app-version': '1.0'
//           });
//       responseJson = _response(response);
//       print(responseJson);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     }
//     return responseJson;
//   }

//   Future<dynamic> getWithToken(String url) async {
//     final prefs = await SharedPreferences.getInstance();
//     final accessToken = prefs.getString('token');

//     var responseJson;
//     try {
//       final response = await http.get(_baseUrl + url, headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'app-version': '1.0',
//         'jde-AIS-Auth': accessToken
//       });
//       responseJson = _response(response);
//       print(responseJson);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     }
//     return responseJson;
//   }

//   Future<dynamic> post(String url, dynamic data) async {
//     final prefs = await SharedPreferences.getInstance();
//     final accessToken = prefs.getString('token');

//     var responseJson;
//     try {
//       final response =
//           await http.post(_baseUrl + url + "?access_token=$accessToken",
//               headers: <String, String>{
//                 'Content-Type': 'application/json; charset=UTF-8',
//               },
//               body: data);

//       responseJson = _response(response);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     }
//     return responseJson;
//   }

//   Future<dynamic> postWithToken(String url, dynamic data) async {
//     final prefs = await SharedPreferences.getInstance();
//     final accessToken = prefs.getString('token');

//     var responseJson;
//     try {
//       final response = await http.post(_baseUrl + url,
//           headers: <String, String>{
//             'Content-Type': 'application/json; charset=UTF-8',
//             'jde-AIS-Auth': accessToken
//           },
//           body: data);

//       responseJson = _response(response);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     }
//     return responseJson;
//   }

//   dynamic _response(http.Response response) {
//     switch (response.statusCode) {
//       case 200:
//         var responseJson = json.decode(response.body.toString());
//         //print(responseJson);
//         return responseJson;
//       case 400:
//         throw BadRequestException(response.body.toString());
//       case 401:

//       case 403:
//         throw UnauthorisedException(response.body.toString());
//       case 500:

//       case 700:
//         Fluttertoast.showToast(msg: "Wrong Version ", timeInSecForIos: 4);

//         throw WrongVersionException(response.body.toString());

//       default:
//         throw FetchDataException(
//             'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
//     }
//   }
// }
