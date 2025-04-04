import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:modu_3_dart_study/2025-04/2025-04-04/data_source/store_data_source.dart';

import '../dto/store_dto.dart';

class HttpStoreDataSource implements StoreDataSource {
  final http.Client _client;

  const HttpStoreDataSource(this._client);

  @override
  Future<List<StoreDto>> fetch() async {
    const String url =
        'https://gist.githubusercontent.com/junsuk5/2b34223fb2368d2bf44c85082745649a/raw/00cb276cb4f4f9573d868e88382f6f7f6759df31/mask_store.json';
    Uri uri = Uri.parse(url);

    final http.Response data = await _client.get(uri);
    List json = jsonDecode(data.body)["stores"];

    return json
        .cast<Map<String, dynamic>>()
        .map((e) => StoreDto.fromJson(e))
        .where(
          (e) =>
              e.remainStatus != null &&
              e.stockAt != null &&
              e.createdAt != null,
        )
        .toList();
  }
}
