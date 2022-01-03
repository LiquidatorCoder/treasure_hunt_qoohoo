import 'dart:math';

import '../models/cell_type.dart';
import '../models/direction.dart';
import '../models/game.dart';
import '../models/game_level.dart';
import '../models/input_type.dart';
import '../models/player.dart';
import '../models/position.dart';
import '../models/treasure.dart';

class GameController {
  late final Game _currentGame;

  // start game
  void startGame(GameLevel level, InputType inputType) {
    _currentGame = Game(level, inputType);
    spwanPlayer(null);
    spwanTreasure();
  }

  // next round
  void nextRound() {
    // if score is 10, reset game
    //     resetGame();
    // else
    //     reset game and update score to previous value
    //     spwanPlayer(_currentGame.player.position);
    //     spwanTreasure(); // random treasure
  }

  // getplayerpos
  Position getPlayerPos() {
    return _currentGame.player.position;
  }

  // gettreasurepos
  Position getTreasurePos() {
    return _currentGame.treasure.position;
  }

  // moveplayer
  void movePlayer(Direction direction) {
    switch (direction) {
      case Direction.UP:
        _currentGame.player.position.y = _currentGame.player.position.y - 1;
        break;
      case Direction.DOWN:
        _currentGame.player.position.y = _currentGame.player.position.y + 1;
        break;
      case Direction.LEFT:
        _currentGame.player.position.x = _currentGame.player.position.x - 1;
        break;
      case Direction.RIGHT:
        _currentGame.player.position.x = _currentGame.player.position.x + 1;
        break;
    }
    // check if round over (win condition)
    checkWinCondition();
  }

  void checkWinCondition() {
    // check if player is on treasure
    // if true nextround
  }

  // spawn player
  void spwanPlayer(Position? position) {
    final _xPos = Random().nextInt(_currentGame.board.columns);
    final _yPos = Random().nextInt(_currentGame.board.rows);
    final _playerPosition = position ?? Position(_xPos, _yPos);
    _currentGame.player = Player(_playerPosition);
    _currentGame.board.cells[_playerPosition.y][_playerPosition.x].type =
        CellType.PLAYER;
  }

  // spawn treasure
  void spwanTreasure() {
    final _xPos = Random().nextInt(_currentGame.board.columns);
    final _yPos = Random().nextInt(_currentGame.board.rows);
    final _treasurePosition = Position(_xPos, _yPos);
    _currentGame.treasure = Treasure(_treasurePosition);
    _currentGame.board.cells[_treasurePosition.y][_treasurePosition.x].type =
        CellType.TREASURE;
  }

  // change level
  void changeLevel(GameLevel level) {
    startGame(level, _currentGame.inputType);
  }

  // change inputtype
  void changeInputType(InputType inputType) {
    _currentGame.inputType = inputType;
  }

  // show Board
  void showBoard() {
    // show _currentGame.board;
  }
}
