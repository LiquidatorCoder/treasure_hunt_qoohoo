import 'cell.dart';
import 'cell_type.dart';
import 'position.dart';

class Board {
  late List<List<Cell>> cells;
  int rows;
  int columns;
  late Position startPosition;
  late Position endPosition;

  Board(this.rows, this.columns) {
    cells = List.generate(rows, (i) {
      return List.generate(columns, (j) {
        final Position pos = Position(i, j);
        return Cell(pos, CellType.EMPTY);
      });
    });
    startPosition = Position(0, 0);
    endPosition = Position(rows - 1, columns - 1);
  }
}
