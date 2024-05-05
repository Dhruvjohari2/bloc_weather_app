import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather/weather.dart';
import 'package:whether_bloc/bloc/weather_bloc_event.dart';
import 'package:whether_bloc/bloc/weather_bloc_state.dart';



class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());
      try {

        WeatherFactory wf = WeatherFactory("AIzaSyAiF9-WrYyqYpk9uwf6T910197MLxghJVk", language: Language.ENGLISH);

        Weather weather = await wf.currentWeatherByLocation(
          event.position.latitude,
          event.position.longitude,
        );
        debugPrint('weather $weather');
        emit(WeatherBlocSuccess(weather));
      } catch (e) {
        emit(WeatherBlocFailure());
      }
    });
  }
}