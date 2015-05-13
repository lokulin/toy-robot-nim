import space2d
import option

type
  Robot* = object
    location: Point
    facing: Heading
    table: Option[Table]

proc newRobot*(location: Point, facing: Heading, table: Option[Table] = None[Table]()): Robot =
  Robot(location: location, facing: facing, table: table)

proc place*(this: Robot, location: Point, facing: Heading, table: Option[Table]): Robot =
  if isSome(table) and table.get().contains(location):
    newRobot(location, facing, table)
  else:
    this

proc move*(this: Robot): Robot =
  var location = this.location & move(this.facing)
  place(this, location, this.facing, this.table)

proc left*(r: var Robot) =
  if isSome(r.table):
    rotate90(r.facing)

proc right*(r: var Robot) =
  if isSome(r.table):
    rotate270(r.facing)

proc report*(r: Robot) =
  if isSome(r.table):
    echo "Report"


