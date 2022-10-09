import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeState{
  const HomeState();
}

class HomeInitialState extends HomeState{
  const HomeInitialState();
}

// ignore: must_be_immutable
class HomeCompletedState extends HomeState{
  List data;
   HomeCompletedState({required this.data});

}

class HomeErrorState extends HomeState{
  const HomeErrorState();
}