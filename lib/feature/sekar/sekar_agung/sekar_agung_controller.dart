import 'package:get/get.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:tembang_bali/data/remote/endpoint.dart';
import 'package:tembang_bali/model/song.dart';

class SekarAgungController extends GetxController {
  bool isLoading = false;
  final pb = PocketBase(Environments.POCKETBASE_DEV);

  List<Song> dataList = [];

  @override
  void onInit() {
    getSekarAgung();
    super.onInit();
  }

  void getSekarAgung() async {
    isLoading = true;
    SongResponse? songResponse;

    try {
      ResultList<RecordModel> resultList = await pb.collection('songs').getList(
        page: 1,
        perPage: 50,
        filter:  'song_type = "euqb9ex6lml8o15"',
      );
      Map<String, dynamic> jsonResult = resultList.toJson();
      songResponse = SongResponse.fromJson(jsonResult);
      dataList = songResponse.items ?? [];
    } on Exception catch (error) {
      print(error.toString());
    } 
    isLoading = false;
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
