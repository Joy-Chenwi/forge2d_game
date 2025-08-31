import 'package:flutter/services.dart';
import 'package:flame/events.dart';

enum playState {playing, gameWon}
class Reload extends FlameGame with KeyboardEvents {
  Reload() : super(
    );

    late PlayState = _playState;
    PlayState get playeState => _playState;
    set playState(PlayState playState){
        _playState = playState;

        switch(playState) {
            case PlayState.playing:
            case PlayState.gameWon:
        }
    }

    void startGame() {
    }
}
