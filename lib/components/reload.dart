import 'package:flame/camera.dart';
import 'package:flutter/services.dart';
import 'package:flame/events.dart';
import 'package:flame/components.dart';

enum PlayState {arrival, playing, gameWon}

class Reload extends FlameGame with KeyboardEvents{
  Reload() : super(
        camera: CameraComponent.withFixedResolution(width: 800, height: 600)
    );

    late PlayState = _playState;
    PlayState get playeState => _playState;
    set playState(PlayState playState){
        _playState = playState;

        switch(playState) {
            case PlayState.arrival:
            case PlayState.gameWon:
                overlays.add(playState.name);
            case PlayState.playing:
                overlays.remove(playState.gameWon.name);
        }
    }

    @override
    FutureOr<void> onLoad() async {
        super.onLoad();

        camera.viewfinder.anchor = Anchor.topLeft;
        world.add(PlayArea());
        playState = PlayState.arrival;
    }

    void startGame() {
        if(playState == PlayState.playing) return;
    }
}
