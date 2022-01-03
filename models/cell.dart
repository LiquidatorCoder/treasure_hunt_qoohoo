import 'cell_type.dart';
import 'position.dart';

class Cell {
  late final Position position;
  late CellType type;

  Cell(this.position, this.type);
}
