extension StringExtension on String {
  
  ///int 형변환
  int? toInt({int radix = 10}) {
    try {
      return int.parse(this, radix: radix);
    } catch (error) {
      return null;
    }
  }

  ///double 형변환
  double? toDouble() {
    try {
      return double.parse(this);
    } catch (error) {
      return null;
    }
  }

  ///전화번호로 변환 ex) 01012344256 -> 010-1234-4256
  String? toPhoneNumber() {
    const List<String?> areaNumberList = ['02','051','053','032','062','042','052','044','031','033','043','041','063','061','054','055','064']; //지역번호
    const List<String?> oldNumberList = ['011','012','013','014','015','016','017','018','019']; //옛날번호
    const List<String?> internetNumberList = ['010','070']; //인터넷
    const List<String?> commericialNumberList = ['1588','1644']; //상업용

    if (this.isEmpty) {
      return "";
    }

    if (this.length >= 2 && areaNumberList.contains(this.substring(0, 2))) {
      if (this.length <= 6) {
        return this.substring(0, 2) + '-' + this.substring(2, this.length);
      } else {
        return this.substring(0, 2) +
            '-' +
            this.substring(2, 6) +
            '-' +
            this.substring(6, this.length);
      }
    } else if (areaNumberList.contains(this.substring(0, 3))) {
      if (this.length <= 6) {
        return this.substring(0, 3) + '-' + this.substring(3, this.length);
      } else {
        return this.substring(0, 3) +
            '-' +
            this.substring(3, 6) +
            '-' +
            this.substring(6, this.length);
      }
    } else if (oldNumberList.contains(this.substring(0, 3))) {
      if (this.length <= 6) {
        return this.substring(0, 3) + '-' + this.substring(3, this.length);
      } else {
        return this.substring(0, 3) +
            '-' +
            this.substring(3, 6) +
            '-' +
            this.substring(6, this.length);
      }
    } else if (internetNumberList.contains(this.substring(0, 3))) {
      if (this.length <= 7) {
        return this.substring(0, 3) + '-' + this.substring(3, this.length);
      } else {
        return this.substring(0, 3) +
            '-' +
            this.substring(3, 7) +
            '-' +
            this.substring(7, this.length);
      }
    } else if (commericialNumberList.contains(this.substring(0, 4))) {
      return this.substring(0, 4) + '-' + this.substring(4, this.length);
    } else {
      return this;
    }
  }
}