import 'package:get/get.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:tembang_bali/data/remote/endpoint.dart';
import 'package:tembang_bali/model/song.dart';

class SekarMadiaController extends GetxController {
  bool isLoading = false;
  final pb = PocketBase(Environments.POCKETBASE_DEV);

  List<Song> dataListDewaYadnya = [];
  List<Song> dataListBhutaYadnya = [];
  List<Song> dataListManusaYadnya = [];
  List<Song> dataListRsiYadnya = [];
  List<Song> dataListPitraYadnya = [];

  @override
  void onInit() async {
    isLoading = true;
    await getSekarMadiaDewaYadnya();
    await getSekarMadiaBhutaYadnya();
    await getSekarMadiaManusaYadnya();
    await getSekarMadiaRsiYadnya();
    await getSekarMadiaPitraYadnya();
    isLoading = false;
    super.onInit();
  }

  Future<void> getSekarMadiaDewaYadnya() async {
    SongResponse? songResponse;

    try {
      ResultList<RecordModel> resultList = await pb.collection('songs').getList(
        page: 1,
        perPage: 50,
        filter:  'song_type = "1uyaj240u3jfxfm" && song_subtype = "wdsyso7rsy259tg"',
      );
      Map<String, dynamic> jsonResult = resultList.toJson();
      songResponse = SongResponse.fromJson(jsonResult);
      dataListDewaYadnya = songResponse.items ?? [];
    } on Exception catch (error) {
      print(error.toString());
    } 
    update();
  }
  
  Future<void> getSekarMadiaBhutaYadnya() async {
    SongResponse? songResponse;

    try {
      ResultList<RecordModel> resultList = await pb.collection('songs').getList(
        page: 1,
        perPage: 50,
        filter:  'song_type = "1uyaj240u3jfxfm" && song_subtype = "7smd21s8hebv3y9"',
      );
      Map<String, dynamic> jsonResult = resultList.toJson();
      songResponse = SongResponse.fromJson(jsonResult);
      dataListBhutaYadnya = songResponse.items ?? [];
    } on Exception catch (error) {
      print(error.toString());
    } 
    update();
  }
  
  Future<void> getSekarMadiaManusaYadnya() async {
    SongResponse? songResponse;

    try {
      ResultList<RecordModel> resultList = await pb.collection('songs').getList(
        page: 1,
        perPage: 50,
        filter:  'song_type = "1uyaj240u3jfxfm" && song_subtype = "ax48r0yi4f05mvl"',
      );
      Map<String, dynamic> jsonResult = resultList.toJson();
      songResponse = SongResponse.fromJson(jsonResult);
      dataListManusaYadnya = songResponse.items ?? [];
    } on Exception catch (error) {
      print(error.toString());
    } 
    update();
  }
  
  Future<void> getSekarMadiaRsiYadnya() async {
    SongResponse? songResponse;

    try {
      ResultList<RecordModel> resultList = await pb.collection('songs').getList(
        page: 1,
        perPage: 50,
        filter:  'song_type = "1uyaj240u3jfxfm" && song_subtype = "ancbt2mpq6htkie"',
      );
      Map<String, dynamic> jsonResult = resultList.toJson();
      songResponse = SongResponse.fromJson(jsonResult);
      dataListRsiYadnya = songResponse.items ?? [];
    } on Exception catch (error) {
      print(error.toString());
    } 
    update();
  }
  
  Future<void> getSekarMadiaPitraYadnya() async {
    SongResponse? songResponse;

    try {
      ResultList<RecordModel> resultList = await pb.collection('songs').getList(
        page: 1,
        perPage: 50,
        filter:  'song_type = "1uyaj240u3jfxfm" && song_subtype = "eu35nfz2ec8xrcw"',
      );
      Map<String, dynamic> jsonResult = resultList.toJson();
      songResponse = SongResponse.fromJson(jsonResult);
      dataListPitraYadnya = songResponse.items ?? [];
    } on Exception catch (error) {
      print(error.toString());
    } 
    update();
  }

  Map<String, dynamic> convertResultListToJson(ResultList<RecordModel> resultList) {
    return {
      "page": resultList.page,
      "perPage": resultList.perPage,
      "totalPages": resultList.totalPages,
      "totalItems": resultList.totalItems,
      "items": resultList.items.map((item) => item.toJson()).toList(),
    };
  }
}
