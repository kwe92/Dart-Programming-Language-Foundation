import 'dart:convert';
import 'dart:io';
import '../../shared/api_service.dart';
import '../models/ani_memes_model.dart';

class AniMemeService extends ApiService {
  @override
  String get host => "https://vast-puce-mite-fez.cyclic.app";

  @override
  Map<String, String> get headers => {HttpHeaders.contentTypeHeader: "application/json"};

  Future<AniMemesModel> getMeme() async {
    final response = await get("/animeme");

    final aniMeme = AniMemesModel.fromJSON(jsonDecode(response.body));

    return aniMeme;
  }
}
