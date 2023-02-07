import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jongseo_toeic/core/network.dart';

class WordApiDatasource {
  WordApiDatasource() {
    networkManager = NetworkManager();
  }

  late final NetworkManager networkManager;

  static const String wordBaseUrl = 'https://wordsapiv1.p.rapidapi.com/words';
  static const String papagoBaseUrl =
      'https://openapi.naver.com/v1/papago/n2mt';

  Future<String> getWordMean(String example) async {
    String source = 'en';
    String target = 'ko';
    String id = dotenv.get('PAPAGO-CLIENT-ID');
    String secretKey = dotenv.get('PAPAGO-CLIENT-SECRET');

    Map<String, dynamic> headers = {
      'X-Naver-Client-Id': id,
      'X-Naver-Client-Secret': secretKey,
      'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
    };
    Map<String, dynamic> queryparameters = {
      'source': source,
      'target': target,
      'text': example
    };

    String result = '';
    try {
      final response = await networkManager.request(
          RequestMethod.post, papagoBaseUrl,
          headers: headers, queryparameters: queryparameters);
      print(response.data);
      if (response.data['message'] != null) {
        if (response.data['message']['result'] != null) if (response
                .data['message']['result']['translatedText'] !=
            null) {
          result = response.data['message']['result']['translatedText'];
        }
      }
      print(result);
      return result;
    } catch (e) {
      print(e.toString());
      return e.toString();
    }
  }

  Future<List<dynamic>> getWordExample(String word) async {
    String url = '${wordBaseUrl}/${word}/examples';
    String key = dotenv.get('X-RAPIDAPI-KEY');
    String host = dotenv.get('X-RAPIDAPI-HOST');

    Map<String, dynamic> headers = {
      'X-RapidAPI-Key': key,
      'X-RapidAPI-Host': host
    };

    final response =
        await networkManager.request(RequestMethod.get, url, headers: headers);

    List<dynamic> examples = [];
    if (response.data['examples'] != null) {
      print(response.data['examples']);
      examples = response.data['examples'];
    }

    return examples.length > 0 ? examples : [];
  }

  Future<String> getWordDefinition(String word) async {
    String url = '${wordBaseUrl}/${word}/definitions';
    // String key = dotenv.get('X-RAPIDAPI-KEY');
    // String host = dotenv.get('X-RAPIDAPI-HOST');
    String key = '05777fab5amsh7852d3761929222p1264c9jsn205b4132badf';
    String host = 'wordsapiv1.p.rapidapi.com';

    Map<String, dynamic> headers = {
      'X-RapidAPI-Key': key,
      'X-RapidAPI-Host': host
    };

    final response =
        await networkManager.request(RequestMethod.get, url, headers: headers);

    print(response.data);
    String example = '';
    if (response.data['definitions'] != null) {
      if (response.data['definitions']['definition'] != null)
        print(response.data['definitions']['definition']);
      example = response.data['definitions']['definition'];
    }

    return example;
  }
}
// https://www.wordsapi.com/