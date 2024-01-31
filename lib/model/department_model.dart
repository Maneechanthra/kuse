class Department {
  final int id;
  final String name_thai;
  final String name_eng;
  final String Tel;

  Department({
    required this.id,
    required this.name_thai,
    required this.name_eng,
    required this.Tel,
  });
}

List<Department> all_department = [
  Department(
    id: 1,
    name_thai: 'ภาควิชาวิทยาการคอมพิวเตอร์และสารสนเทศ',
    name_eng: 'Computer and Information Science',
    Tel: '0630038428',
  ),
  Department(
    id: 2,
    name_thai: 'ภาควิศวกรรมไฟฟ้าและคอมพิวเตอร์',
    name_eng: 'Computer and Information Science',
    Tel: '0829606502',
  ),
  Department(
    id: 3,
    name_thai: 'ภาควิชาวิศวกรรมเครื่องกลและการผลิต',
    name_eng: 'Computer and Information Science',
    Tel: '0829606502',
  ),
  Department(
    id: 4,
    name_thai: 'ภาควิชาวิศวกรรมโยธาและสิ่งแวดล้อม',
    name_eng: 'Computer and Information Science',
    Tel: '0829606502',
  ),
  Department(
    id: 5,
    name_thai: 'ภาควิชาวิทยาศาสตร์ทั่วไป',
    name_eng: 'Computer and Information Science',
    Tel: '0829606502',
  ),
];
