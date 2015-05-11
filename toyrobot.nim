import table as tables
import robot as robots
import basic2d

var
  p1: TPoint2d = TPoint2d(x: 0.0, y: 0.0)
  p2: TPoint2d = TPoint2d(x: 4.0, y: 4.0)
  f: TVector2d = TVector2d(x: 0.0, y: 1.0)
  table: Table = Table(llc: p1, urc: p2)
  robot: Robot = Robot(location: p1, facing: f, table: table)

echo "Hello Robot!"
echo robot
robot.move()
echo robot
robot.left()
echo robot
robot.right()
echo robot
robot.place()
echo robot
robot.report()
