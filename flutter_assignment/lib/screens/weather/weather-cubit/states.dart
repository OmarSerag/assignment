abstract class WeatherState{}
class ShowWeatherInitialState extends WeatherState{}
class WeatherGetLoadingState extends WeatherState{}
class WeatherGetSuccessState extends WeatherState{}
class WeatherGetErrorState extends WeatherState{
  final String error;

  WeatherGetErrorState(this.error);
}
