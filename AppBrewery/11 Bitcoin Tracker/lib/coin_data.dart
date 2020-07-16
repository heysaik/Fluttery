import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = 'C78D0963-3863-4EB7-850F-A96D2B405F35';
const apiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future getCoinData(String currency, String crypto) async {
    String url = '$apiURL/$crypto/$currency/?apikey=$apiKey';
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var coinData = jsonDecode(response.body);
      var lastPrice = coinData['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'Problem with request';
    }
  }
}
