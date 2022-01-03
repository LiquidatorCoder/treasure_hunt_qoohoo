import 'controllers/game_controller.dart';
import 'controllers/input_controller.dart';
import 'models/game_level.dart';
import 'models/input_type.dart';

void main() {
  final level = GameLevel.EASY; // set from settings
  final inputType = InputType.TOUCH; // set from settings
  final gameController = GameController()..startGame(level, inputType);
  final inputController = InputController(gameController);
  inputController.listenToInput();
}
