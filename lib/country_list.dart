import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> fetchCountries() async {
  // Specify the fields we want to retrieve
  final url = Uri.parse(
      'https://restcountries.com/v3.1/all?fields=name,cca2,cca3,ccn3,capital,currencies,languages,region');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    List<dynamic> countriesJson = json.decode(response.body);
    List<String> countryList = countriesJson
        .map((country) => country['name']['common'] as String)
        .toList();
    return countryList;
  } else {
    throw Exception(
        'Failed to load countries. Status code: ${response.statusCode}');
  }
}
