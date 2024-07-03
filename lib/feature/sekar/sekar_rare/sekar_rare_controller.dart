import 'package:get/get.dart';
import 'package:tembang_bali/data/remote/endpoint.dart';
import 'package:tembang_bali/model/sekar_rare.dart';
import 'package:pocketbase/pocketbase.dart';

class SekarRareController extends GetxController {
  final pb = PocketBase(Environments.POCKETBASE_DEV);

  List<SekarRare> dataListSekarRare = [];

  @override
  void onInit() {
    getSekarRare();
    super.onInit();
  }

  void getSekarRare() async {
    // SekarRareResponse? sekarRareResponse;
    SekarRareResponse? sekarRareResponse;

    try {
      ResultList<RecordModel> resultList = await pb.collection('songs').getList(
        page: 1,
        perPage: 50,
        filter:  'song_type = "wcxfwx0dl0941ap"',
      );
      Map<String, dynamic> jsonResult = resultList.toJson();
      sekarRareResponse = SekarRareResponse.fromJson(jsonResult);
      dataListSekarRare = sekarRareResponse.items ?? [];
      // print(dataListSekarRare.first.toString());
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
