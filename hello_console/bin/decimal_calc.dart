import 'dart:io';
import 'package:decimal/decimal.dart';

void main(List<String> args) {
  // 用户输入
  stdout.write('请输入两个数：');
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();

  // 用包运算
  final d = (String s) => Decimal.tryParse(s);

  // 检查输入是否有效
  if (input1 != null && input2 != null) {
    Decimal? num1 = d(input1);
    Decimal? num2 = d(input2);

    if (num1 != null && num2 != null) {
      // 执行精确的十进制运算
      print(num1 + num2);
    } else {
      print('输入无效，请确保输入的是有效的十进制数。');
    }
  } else {
    print('输入无效，请输入两个数字。');
  }

  stdin.readLineSync();
}
