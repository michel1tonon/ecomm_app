import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// File made to concentrate routes and facilitate decoupling of the Modular Flutter if necessary.

Future<Object> pushNamed(String name, { Object arguments,}) {
  return Modular.to.pushNamed(name, arguments: arguments);
}

Future<Object> pushReplacementNamed(String name, { Object arguments }){
  return Modular.to.pushReplacementNamed(name, arguments: arguments);
}

Future<Object> pushNamedAndRemoveUntil(String name,
    bool Function(Route<dynamic>) predicate,
    { Object arguments }){
  return Modular.to.pushNamedAndRemoveUntil(name, predicate,
      arguments: arguments);
}

void pop({result}){
  Modular.to.pop(result);
}

void maybePop({result}){
  Modular.to.maybePop(result);
}

void popUntil(RoutePredicate predicate){
  Modular.to.popUntil(predicate);
}


