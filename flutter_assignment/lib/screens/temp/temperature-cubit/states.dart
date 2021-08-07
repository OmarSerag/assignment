abstract class temperatureState{}
class temperatureInitialState extends temperatureState{}
class temperatureGetLoadingState extends temperatureState{}
class temperatureGetSuccessState extends temperatureState{}
class temperatureGetErrorState extends temperatureState{
  final String error;

  temperatureGetErrorState(this.error);
}
