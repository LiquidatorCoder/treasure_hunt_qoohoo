import 'board.dart';
import 'game_level.dart';
import 'input_type.dart';
import 'player.dart';
import 'treasure.dart';

class Game {
  late Board board;
  late int score;
  late GameLevel gameLevel;
  late Player player;
  late Treasure treasure;
  late InputType inputType;

  Game(this.gameLevel, this.inputType) {
    switch (gameLevel) {
      case GameLevel.EASY:
        board = Board(3, 3);
        break;
      case GameLevel.MEDIUM:
        board = Board(4, 4);
        break;
      case GameLevel.HARD:
        board = Board(5, 5);
        break;
    }
    score = 0;
    player = Player(board.startPosition);
    treasure = Treasure(board.endPosition);
  }
}
