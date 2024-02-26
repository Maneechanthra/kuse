class users {
  final int id;
  final String name;
  final String email;
  final String department;
  final String faculty;
  final String std_id;
  final int status;

  users({
    required this.id,
    required this.name,
    required this.email,
    required this.department,
    required this.faculty,
    required this.std_id,
    required this.status,
  });
}

List<users> getUsers = [
  users(
    id: 1,
    name: 'Sumet Maneechanthra',
    email: 'sumet.ma@ku.th',
    department: 'วิทยาการคอมพิวเตอร์และสารสนเทศ',
    faculty: 'คณะวิทยาศาสตร์และวิศวกรรมศาสตร์',
    std_id: '6440204052',
    status: 1,
  ),
  users(
    id: 2,
    name: 'Tammanoon Maneechanthra',
    email: 'tammanoon.m@ku.th',
    department: 'วิทยาการคอมพิวเตอร์และสารสนเทศ',
    faculty: 'คณะวิทยาศาสตร์และวิศวกรรมศาสตร์',
    std_id: '6040204052',
    status: 2,
  ),
];
