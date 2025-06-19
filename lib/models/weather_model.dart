// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'dart:convert';

WeatherModel weatherModelFromJson(String str) => WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

class WeatherModel {
    Request? request;
    Location? location;
    Current? current;

    WeatherModel({
        this.request,
        this.location,
        this.current,
    });

    factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        request: json["request"] == null ? null : Request.fromJson(json["request"]),
        location: json["location"] == null ? null : Location.fromJson(json["location"]),
        current: json["current"] == null ? null : Current.fromJson(json["current"]),
    );

    Map<String, dynamic> toJson() => {
        "request": request?.toJson(),
        "location": location?.toJson(),
        "current": current?.toJson(),
    };
}

class Current {
    String? observationTime;
    int? temperature;
    int? weatherCode;
    List<String>? weatherIcons;
    List<String>? weatherDescriptions;
    Astro? astro;
    AirQuality? airQuality;
    int? windSpeed;
    int? windDegree;
    String? windDir;
    int? pressure;
    int? precip;
    int? humidity;
    int? cloudcover;
    int? feelslike;
    int? uvIndex;
    int? visibility;
    String? isDay;

    Current({
        this.observationTime,
        this.temperature,
        this.weatherCode,
        this.weatherIcons,
        this.weatherDescriptions,
        this.astro,
        this.airQuality,
        this.windSpeed,
        this.windDegree,
        this.windDir,
        this.pressure,
        this.precip,
        this.humidity,
        this.cloudcover,
        this.feelslike,
        this.uvIndex,
        this.visibility,
        this.isDay,
    });

    factory Current.fromJson(Map<String, dynamic> json) => Current(
        observationTime: json["observation_time"],
        temperature: json["temperature"],
        weatherCode: json["weather_code"],
        weatherIcons: json["weather_icons"] == null ? [] : List<String>.from(json["weather_icons"]!.map((x) => x)),
        weatherDescriptions: json["weather_descriptions"] == null ? [] : List<String>.from(json["weather_descriptions"]!.map((x) => x)),
        astro: json["astro"] == null ? null : Astro.fromJson(json["astro"]),
        airQuality: json["air_quality"] == null ? null : AirQuality.fromJson(json["air_quality"]),
        windSpeed: json["wind_speed"],
        windDegree: json["wind_degree"],
        windDir: json["wind_dir"],
        pressure: json["pressure"],
        precip: json["precip"],
        humidity: json["humidity"],
        cloudcover: json["cloudcover"],
        feelslike: json["feelslike"],
        uvIndex: json["uv_index"],
        visibility: json["visibility"],
        isDay: json["is_day"],
    );

    Map<String, dynamic> toJson() => {
        "observation_time": observationTime,
        "temperature": temperature,
        "weather_code": weatherCode,
        "weather_icons": weatherIcons == null ? [] : List<dynamic>.from(weatherIcons!.map((x) => x)),
        "weather_descriptions": weatherDescriptions == null ? [] : List<dynamic>.from(weatherDescriptions!.map((x) => x)),
        "astro": astro?.toJson(),
        "air_quality": airQuality?.toJson(),
        "wind_speed": windSpeed,
        "wind_degree": windDegree,
        "wind_dir": windDir,
        "pressure": pressure,
        "precip": precip,
        "humidity": humidity,
        "cloudcover": cloudcover,
        "feelslike": feelslike,
        "uv_index": uvIndex,
        "visibility": visibility,
        "is_day": isDay,
    };
}

class AirQuality {
    String? co;
    String? no2;
    String? o3;
    String? so2;
    String? pm25;
    String? pm10;
    String? usEpaIndex;
    String? gbDefraIndex;

    AirQuality({
        this.co,
        this.no2,
        this.o3,
        this.so2,
        this.pm25,
        this.pm10,
        this.usEpaIndex,
        this.gbDefraIndex,
    });

    factory AirQuality.fromJson(Map<String, dynamic> json) => AirQuality(
        co: json["co"],
        no2: json["no2"],
        o3: json["o3"],
        so2: json["so2"],
        pm25: json["pm2_5"],
        pm10: json["pm10"],
        usEpaIndex: json["us-epa-index"],
        gbDefraIndex: json["gb-defra-index"],
    );

    Map<String, dynamic> toJson() => {
        "co": co,
        "no2": no2,
        "o3": o3,
        "so2": so2,
        "pm2_5": pm25,
        "pm10": pm10,
        "us-epa-index": usEpaIndex,
        "gb-defra-index": gbDefraIndex,
    };
}

class Astro {
    String? sunrise;
    String? sunset;
    String? moonrise;
    String? moonset;
    String? moonPhase;
    int? moonIllumination;

    Astro({
        this.sunrise,
        this.sunset,
        this.moonrise,
        this.moonset,
        this.moonPhase,
        this.moonIllumination,
    });

    factory Astro.fromJson(Map<String, dynamic> json) => Astro(
        sunrise: json["sunrise"],
        sunset: json["sunset"],
        moonrise: json["moonrise"],
        moonset: json["moonset"],
        moonPhase: json["moon_phase"],
        moonIllumination: json["moon_illumination"],
    );

    Map<String, dynamic> toJson() => {
        "sunrise": sunrise,
        "sunset": sunset,
        "moonrise": moonrise,
        "moonset": moonset,
        "moon_phase": moonPhase,
        "moon_illumination": moonIllumination,
    };
}

class Location {
    String? name;
    String? country;
    String? region;
    String? lat;
    String? lon;
    String? timezoneId;
    String? localtime;
    int? localtimeEpoch;
    String? utcOffset;

    Location({
        this.name,
        this.country,
        this.region,
        this.lat,
        this.lon,
        this.timezoneId,
        this.localtime,
        this.localtimeEpoch,
        this.utcOffset,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        country: json["country"],
        region: json["region"],
        lat: json["lat"],
        lon: json["lon"],
        timezoneId: json["timezone_id"],
        localtime: json["localtime"],
        localtimeEpoch: json["localtime_epoch"],
        utcOffset: json["utc_offset"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "country": country,
        "region": region,
        "lat": lat,
        "lon": lon,
        "timezone_id": timezoneId,
        "localtime": localtime,
        "localtime_epoch": localtimeEpoch,
        "utc_offset": utcOffset,
    };
}

class Request {
    String? type;
    String? query;
    String? language;
    String? unit;

    Request({
        this.type,
        this.query,
        this.language,
        this.unit,
    });

    factory Request.fromJson(Map<String, dynamic> json) => Request(
        type: json["type"],
        query: json["query"],
        language: json["language"],
        unit: json["unit"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "query": query,
        "language": language,
        "unit": unit,
    };
}
