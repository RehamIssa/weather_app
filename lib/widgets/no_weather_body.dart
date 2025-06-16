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
              color: Color.fromARGB(255, 47, 46, 46),
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
                color: Color(0xff919191),
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
            style: ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
            ),
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
