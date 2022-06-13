import 'dart:convert';

class Bus {
  int id;
  String color;
  String name;
  String photo;
  String tamano;
  int status;
//------------------------------------------------------------------------------
  Bus({
    required this.id,
    this.color = '',
    this.name = '',
    this.photo ='',
    this.tamano = '',
    this.status = 0,
  });
//------------------------------------------------------------------------------
  factory Bus.fromJson(String str) => Bus.fromMap(json.decode(str));
//------------------------------------------------------------------------------
  factory Bus.fromMap(Map<String, dynamic> json) => Bus(
        id: json["id"],
        color: json["color"],
        name: json["name"],
        photo: json["photo"],
        tamano: json["tamano"],
        status: json["status"],
  );
//------------------------------------------------------------------------------

  @override
  String toString() {
    return '{id: $id, color: $color, name: $name, photo: $photo, tamano: $tamano, status: $status }';
    // return super.toString();
  }
//------------------------------------------------------------------------------
}
