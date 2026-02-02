import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:http/http.dart' as http;

import 'interceptors.dart';

http.Client intercepted_client = InterceptedClient.build(
  interceptors: [
    HeadersInterceptors(),
  ],
  requestTimeout: const Duration(seconds: 60),
);
