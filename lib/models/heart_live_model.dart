// ignore_for_file: prefer_collection_literals

class HeartLiveModel {
  EcgData ecgData;

  HeartLiveModel({
    required this.ecgData,
  });

}

class EcgData {
  int id;
  String predict;
  int data;
  DateTime createdAt;
  DateTime updatedAt;

  EcgData({
    required this.id,
    required this.predict,
    required this.data,
    required this.createdAt,
    required this.updatedAt,
  });

}

class Parameter {




Map<String, dynamic> toJson() {
final Map<String, dynamic> data =  Map<String, dynamic>();
return data;
}
}