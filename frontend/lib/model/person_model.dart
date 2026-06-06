class PersonModel {
  int? id;
  String? pname;
  String? pphone;
  String? page;

  PersonModel({
    this.id,
    this.pname,
    this.pphone,
    this.page,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      id: json['id'],
      pname: json['pname'],
      pphone: json['pphone'],
      page: json['page'],
    );
  }
}