import point as points
import table as tables
import robot as robots

var
  p1: Point = Point(x: 0.0, y: 0.0)
  p2: Point = Point(x: 4.0, y: 4.0)
  table: Table = Table(llc: p1, urc: p2)
  robot: Robot = Robot(location: p1, facing: 0.0, table: table)

echo "Hello Robot!"
echo robot
robot.move()
robot.left()
robot.right()
robot.place()
robot.report()
