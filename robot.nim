import point
import table

type
  Robot* = object
    location*: Point
    facing*: float
    table*: Table

proc move*(r: var Robot) =
  echo "Move"

proc left*(r: var Robot) =
  echo "Left"

proc right*(r: var Robot) =
  echo "Right"

proc place*(r: var Robot) =
  echo "Place"

proc report*(r: var Robot) =
  echo "Report"


