class Work {
  final int id;
  final String jop_position;
  final String company;
  final String years_start;
  final String years_end;

  Work(
      {required this.id,
      required this.jop_position,
      required this.company,
      required this.years_start,
      required this.years_end});
}

List<Work> getWork = [
  Work(
    id: 1,
    jop_position: "โปรแกมเมอร์",
    company: 'บริษัท เก่งจังเลย จำกัด',
    years_start: '2560',
    years_end: '2564',
  ),
  Work(
    id: 1,
    jop_position: "โปรแกมเมอร์",
    company: 'บริษัท ชอบจังเลย จำกัด',
    years_start: '2565',
    years_end: '2567',
  ),
  Work(
    id: 1,
    jop_position: "นักวิเคราะห์ระบบ",
    company: 'บริษัท ชอบจังเลย จำกัด',
    years_start: '2565',
    years_end: '2567',
  ),
];
