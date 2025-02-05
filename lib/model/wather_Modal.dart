class WatherModal {
  final String cityName;
  final String date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String image;

  WatherModal({
    required this.cityName,
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.image,
  });

  // دالة fromJson لتحويل الـ JSON لكائن من WatherModal
  factory WatherModal.fromJson(Map<String, dynamic> json) {
    return WatherModal(
      cityName: json['address'] ?? 'Unknown', // تأكد من اسم المفتاح
      date: json['currentConditions']['datetime'] ?? '',
      temp: (json['currentConditions']['temp'] ?? 0).toDouble(),
      maxTemp: (json['days'][0]['tempmax'] ?? 0).toDouble(),
      minTemp: (json['days'][0]['tempmin'] ?? 0).toDouble(),
      image: json['currentConditions']['icon'] ?? '',
    );
  }
}


