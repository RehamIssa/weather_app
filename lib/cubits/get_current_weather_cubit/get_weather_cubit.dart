import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  //The initial state is the no weather state (default state)
  GetWeatherCubit() : super(InitialState());
  late WeatherModel weatherModel;
  getWeather({required String value}) async {
    try {
      weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: value);
      //emit method used to send the state to the UI
      emit(
        WeatherLoadedState(),
      ); //send this state in case the request was successful
    } on Exception {
      emit(
        WeatherFailedState(),
      ); //send this state in case the request failed
    }
  }
}
