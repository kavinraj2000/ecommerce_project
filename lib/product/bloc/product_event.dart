part of 'product_bloc.dart';

abstract class ProductEvent {}

class ProductInitialEvent extends ProductEvent {}

class ProductLoadEvent extends ProductEvent {}

class ProductLoadSuccessEvent extends ProductEvent {}

class ProductLoadFailureEvent extends ProductEvent {}
