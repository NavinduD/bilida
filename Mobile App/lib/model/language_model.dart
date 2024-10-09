class LanguageModel {
  String? code;
  String? name;

  LanguageModel({this.code, this.name});

  Map<String, dynamic> toJson() => {'code': code, 'name': name};
}
