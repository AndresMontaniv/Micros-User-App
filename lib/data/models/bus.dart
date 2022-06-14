import 'dart:convert';

class Bus {
  int id;
  String color;
  String name;
  String? photo;
  int status;
//------------------------------------------------------------------------------
  Bus({
    required this.id,
    this.color = '',
    this.name = '',
    this.photo,
    this.status = 0,
  });
//------------------------------------------------------------------------------
  factory Bus.fromJson(String str) => Bus.fromMap(json.decode(str));
//------------------------------------------------------------------------------
  String toJson() => json.encode(toMap());
//------------------------------------------------------------------------------
  factory Bus.fromMap(Map<String, dynamic> json) => Bus(
        id: json["id"],
        color: json["color"],
        name: json["name"],
        photo: json["photo"],
        status: json["status"],
      );
//------------------------------------------------------------------------------

  @override
  String toString() {
    return '{id: $id, color: $color, name: $name, photo: $photo, status: $status }';
    // return super.toString();
  }

//------------------------------------------------------------------------------
  Map<String, dynamic> toMap() => {
        'id': id,
        'color': color,
        'name': name,
        'photo': photo,
        'status': status,
      };
//------------------------------------------------------------------------------

}
