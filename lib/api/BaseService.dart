/*
* this is contain the mixin
* of which every other class will use
* this class may contain the header settings and keys for rapid api
*
*
* https://en.wikipedia.org/wiki/Mixin
*
*
*
*
* import 'dart:convert';
import 'dart:io';


mixin BaseApiService {
  final Map<String, String> headers = {
    HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
    HttpHeaders.userAgentHeader: PlatformInfo().userAgent,
    HttpHeaders.acceptHeader: 'application/json',
    'X-RAPIDAPI-Build': ------------------------->
    'X-RAPIDAPI-USER-AGENT':
        jsonEncode({'lang': Platform.isIOS ? 'objective-c' : 'kotlin'}),
    'bindings_version': "1.3.0+1", // TODO: Update for every new versions
    'X-FLUTTER-USER-AGENT': jsonEncode({'version': '1.0.0'})
  };
  final String baseUrl = '';
}
* */