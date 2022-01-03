import '../models/input_type.dart';
import 'game_controller.dart';

class InputController {
  late final GameController _gameController;

  InputController(this._gameController);

  InputType? getInputType() {
    // get input type from settings
  }

  void listenToInput() {
    // get input from user
    // if input is valid, call game controller
    // get direction acc to input type
    // _gameController.movePlayer(direction);
  }

  void setInputType(InputType inputType) {
    _gameController.changeInputType(inputType);
  }
}
