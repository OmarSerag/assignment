abstract class WindState{}
class WindInitialState extends WindState{}
class WindGetLoadingState extends WindState{}
class WindGetSuccessState extends WindState{}
class WindGetErrorState extends WindState{
  final String error;

  WindGetErrorState(this.error);
}