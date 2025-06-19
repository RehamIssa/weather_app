import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/views/search_view.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/images/illustartion/weather.svg',
            height: 160,
            width: 60,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'There is nothing to show yet',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 300,
            child: Text(
              'Start Now and find the weather of the city you want!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return SearchView();
              }));
            },
            style: ButtonStyle(),
            child: Text(
              'Search Weather',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
