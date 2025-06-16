import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Search a City'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: TextField(
          onSubmitted: (value) async {
            //the way to call and use an object from the cubit
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(value: value);
            Navigator.pop(context);
          },
          decoration: InputDecoration(
            labelText: 'Search',
            hintText: 'Enter City Name',
            contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ) //the color of the border
                ),
          ),
        )),
      ),
    );
  }
}
