import 'package:bounce_game/global/model/actor.dart';
import 'package:flutter/material.dart';

abstract class Object extends StatelessWidget {
  final Actor actor;

  const Object({required this.actor, required Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(actor.url);
  }
}

class BallObject extends Object {
  BallObject({required Ball ball, required Key key}) : super(actor: ball, key: key);
}

class WallObject extends Object {
  WallObject({required Wall wall, required Key key}) : super(actor: wall, key: key);
}

class Wall2x2Object extends Object {
  Wall2x2Object({required Wall2x2 wall2x2, required Key key}) : super(actor: wall2x2, key: key);
}

class RingObject extends Object {
  RingObject({required Actor ring, required Key key}) : super(actor: ring, key: key);
}

class ThornObject extends Object {
  ThornObject({required Thorn thorn, required Key key}) : super(actor: thorn, key: key);
}

class Finishbject extends Object {
  Finishbject({required Finish finish, required Key key}) : super(actor: finish, key: key);
}
