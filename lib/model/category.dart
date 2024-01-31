class Categories {
  final int id;
  final String title;
  final String icon;

  Categories({
    required this.id,
    required this.title,
    required this.icon,
  });
}

List<Categories> all_categories = [
  Categories(
    id: 1,
    title: "ข้อมูลส่วนตัว",
    icon: "assets/img/icons/personal-card.png",
  ),
  Categories(
    id: 2,
    title: "ตำแหน่งงาน",
    icon: "assets/img/icons/job-position.png",
  ),
  Categories(
    id: 3,
    title: "ข้อมูลการศึกษา",
    icon: "assets/img/icons/library.png",
  ),
  Categories(
    id: 4,
    title: "คำร้อง",
    icon: "assets/img/icons/request-for-proposal.png",
  ),
];
