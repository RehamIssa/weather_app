import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Error extends StatelessWidget {
  const Error({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/illustartion/error.svg',
            height: 200,
            width: 80,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Oops!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 47, 46, 46),
            ),
          ),
          SizedBox(
            width: 300,
            child: Text(
              'Something went wrong, try again.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xff919191),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
