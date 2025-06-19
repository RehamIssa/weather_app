class WeatherState {}

//The default state before requesting any data
//In this project it is no weather data
class InitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {}

class WeatherFailedState extends WeatherState {}



/*
    Steps to use cubit for state management
    1-create states --> each state represented by a class
    2-create cubit
    3-create function
    4-provide cubit
    5-integrate cubit
    6-trigger cubit
    
 */