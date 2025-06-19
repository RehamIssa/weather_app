import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_state.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                colorScheme: ColorScheme.fromSwatch(
                  primarySwatch: getThemeColor(
                      BlocProvider.of<GetWeatherCubit>(context)
                          .weatherModel
                          ?.weatherCondition),
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: getThemeColor(
                      BlocProvider.of<GetWeatherCubit>(context)
                          .weatherModel
                          ?.weatherCondition),
                  elevation: 2,
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case 'sunny':
    case 'clear':
      return Colors.orange;

    case 'partly cloudy':
      return Colors.amber;

    case 'cloudy':
    case 'overcast':
      return Colors.blue;

    case 'mist':
    case 'fog':
    case 'freezing fog':
      return Colors.brown;

    case 'patchy rain possible':
    case 'patchy light rain':
    case 'light rain':
    case 'light rain shower':
    case 'patchy light drizzle':
    case 'light drizzle':
    case 'patchy light rain with thunder':
      return Colors.lightBlue;

    case 'moderate rain':
    case 'moderate rain at times':
    case 'heavy rain':
    case 'heavy rain at times':
    case 'torrential rain shower':
    case 'moderate or heavy rain shower':
    case 'moderate or heavy rain with thunder':
      return Colors.indigo;

    case 'thundery outbreaks possible':
    case 'patchy snow with thunder':
    case 'moderate or heavy snow with thunder':
      return Colors.deepPurple;

    case 'patchy snow possible':
    case 'light snow':
    case 'patchy light snow':
    case 'patchy moderate snow':
    case 'moderate snow':
    case 'patchy heavy snow':
    case 'heavy snow':
    case 'blowing snow':
    case 'blizzard':
    case 'light snow showers':
    case 'moderate or heavy snow showers':
    case 'patchy light snow with thunder':
      return Colors.lightBlue;

    case 'patchy sleet possible':
    case 'light sleet':
    case 'moderate or heavy sleet':
    case 'light sleet showers':
    case 'moderate or heavy sleet showers':
    case 'ice pellets':
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
      return Colors.cyan;

    case 'patchy freezing drizzle possible':
    case 'freezing drizzle':
    case 'heavy freezing drizzle':
    case 'light freezing rain':
    case 'moderate or heavy freezing rain':
      return Colors.blue;

    default:
      return Colors.blue; // fallback
  }
}
