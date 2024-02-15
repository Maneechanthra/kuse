import 'package:flutter/material.dart';
import 'package:kuse/widget/notifications.dart';

class Notifications {
  final int id;
  final String title;
  final String description;

  Notifications({
    required this.id,
    required this.title,
    required this.description,
  });
}

List<Notifications> getNotifications = [
  Notifications(
    id: 1,
    title: 'ประกาศนิสิตที่ได้รับยกเว้นค่าหน่วยกิต ประจำปีการศึกษา 2566',
    description:
        'ประกาศนิสิตที่ได้รับยกเว้นค่าหน่วยกิต ประจำปีการศึกษา 2566 ให้ดำเนินการทำเรื่องผ่านระบบออนไลน์',
  ),
  Notifications(
    id: 2,
    title:
        'เรียนเชิญบุคลากร นิสิต เข้าร่วมกิจกรรมครบรอบ 20 ปี คณะวิทยาศาสตร์และวิศวกรรมศาสตร์',
    description:
        'เรียนเชิญบุคลากร นิสิต เข้าร่วมกิจกรรมครบรอบ 20 ปี คณะวิทยาศาสตร์และวิศวกรรมศาสตร์ พ.ศ. 2567 ในวันที่ 3 มิถุนายน พ.ศ.2567',
  ),
];
