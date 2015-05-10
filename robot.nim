type
  Point = tuple[x: float, y: float]
  Table = tuple[llc: Point, urc: Point]
  Robot = tuple[location: Point, facing: float, table: Table]

var
  p1: Point = (x: 0.0, y: 0.0)
  p2: Point = (x: 4.0, y: 4.0)
  table: Table = (llc: p1, urc: p2)
  robot: Robot = (location: p1, facing: 0.0, table: table)

echo robot
