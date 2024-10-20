class Entity {

  String name;
  String? address;
  String? phoneNumber;
  String? email;
  String? operationHours;
  String? description;

  Entity({
    required this.name,
    this.address,
    this.phoneNumber,
    this.email,
    this.operationHours,
    this.description,
  });
}