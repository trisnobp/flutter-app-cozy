import 'dart:convert';

import 'package:bwa_cozy/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    var result = await http
        .get(Uri.parse('https://bwa-cozy-api.vercel.app/recommended-spaces'));


    if (result.statusCode == 200) {
      List res = jsonDecode(result.body); // Convert String ke List of JSON
      List<Space> spaces = res
          .map((e) => Space.fromJson(e))
          .toList(); // Mapping JSON ke Space Object
      return spaces;
    } else {
      return List<Space>;
    }
  }
}
