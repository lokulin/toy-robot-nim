import table as tables
import robot as robots
import option
import basic2d

var
  p1: Point = Point(x: 0.0, y: 0.0)
  p2: Point = Point(x: 4.0, y: 4.0)
  f: Heading = Heading(x: 0.0, y: 1.0)
  table: Option[TableObj] = Some(Table(p1, p2))
  robot: Robot = Robot(location: p1, facing: f, table: None(Table()))


robot.report()
robot = robot.move()
robot.left()
robot.right()
robot = robot.place(p1, f, table)
robot = robot.move()
robot.left()
robot.right()
robot.report()

#assert 1 == 2
