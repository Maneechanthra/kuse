class InternalDepartment {
  final int id;
  final String name;

  InternalDepartment({
    required this.id,
    required this.name,
  });
}

List<InternalDepartment> getInternalDepartments = [
  InternalDepartment(
    id: 1,
    name: "ฝ่ายกิจการนิสิต",
  ),
  InternalDepartment(
    id: 2,
    name: "ฝ่ายธุรการ",
  ),
  InternalDepartment(
    id: 3,
    name: "ฝ่ายงานทะเบียน",
  ),
  InternalDepartment(
    id: 4,
    name: "ฝ่ายรับเข้านิสิต",
  ),
];
