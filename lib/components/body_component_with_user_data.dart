import 'package:flame_forge2d/flame_forge2d.dart';

class BodyComponentWithUserData extends BodyComponent {
  BodyComponentWithUserData({
    super.key,
    super.bodyDef,
    super.fixtureDefs,
    super.children,
    super.renderBody,
    super.priority,
    super.paint,
  });

  @override
  Body createBody() {
    final body = world.createBody(super.bodyDef!)..userData = this;
    fixtureDefs?.forEach(body.createFixture);
    return body;
  }
}
