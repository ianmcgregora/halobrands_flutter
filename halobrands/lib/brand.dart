class Brand {
  String? name;
  String? category;
  Brand({this.name, this.category});

  fromJson(Map<String, dynamic> json) {
    name = json['name'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name ?? '';
    data['category'] = category ?? '';
    return data;
  }
}
