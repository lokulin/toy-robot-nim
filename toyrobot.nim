import space2d
import robot as robots
import option

var
  p1: Point = newPoint(0.0, 0.0)
  p2: Point = newPoint(4.0, 4.0)
  f: Heading = newHeading(0.0, 1.0)
  table: Option[Table] = Some(newTable(p1, p2))
  robot: Robot = newRobot(p1, f)


robot.report()
robot = robot.move()
robot.left()
robot.right()
robot = robot.place(p1, f, table)
robot = robot.move()
robot.left()
robot.right()
robot.report()

proc returnsString[T](x: T): string =
  "yep"

var test: Option[string] =  map(table, returnsString)

echo test.get

#assert 1 == 2
