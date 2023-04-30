class store{
  String time;
  String conditions;
  double temp_c;
  double lat;
  double lon;
  double feels;
  double temp_f;
  int humidity;
  double wind;
  double visibility;
  double presseure;
  String conditionIcon;
  store({
     this.time='2023-02-16 12:10',
    this.conditions='clear',
    this.temp_c=8,
    this.lat=51.52,
    this.lon = -0.11,
    this.feels=5.5,
    this.temp_f=46.4,
    this.humidity=76,
    this.wind=20.2,
    this.visibility=10.0,
    this.presseure=1026,
    this.conditionIcon='//cdn.weatherapi.com/weather/64x64/day/122.png'
});
  factory store.fromJson(Map<String, dynamic> json){
    return store(
      time: json["location"]["localtime"],
      conditions: json["current"]["condition"]["text"],
      temp_c: json["current"]["temp_c"],
      lat: json["location"]["lat"],
      lon: json["location"]["lon"],
      feels: json['current']['feelslike_c'],
      temp_f: json["current"]["temp_f"],
      humidity: json["current"]["humidity"],
      wind:  json["current"]["wind_kph"],
      visibility:json["current"]["vis_km"],
      presseure: json["current"]["pressure_mb"],
      conditionIcon: json["current"]["condition"]["icon"],



    );
  }
}