class WeatherModel {
  final String cityName;
  final String date;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String? image;
  final String weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.image,
    required this.weatherCondition,
  });

  //this is a named consturcor to retrive data from API in the internet in json format
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: json['current']['last_updated'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      image: json['forecast']['forecastday'][0]['condition']['text'],
      weatherCondition: json['forecast']['forecastday'][0]['condition']['icon'],
    );
  }
}
