import table
import basic2d

type
  Robot* = object
    location*: TPoint2d
    facing*: TVector2d
    table*: Table

proc move*(r: var Robot) =
  r.location &= move(r.facing)

proc left*(r: var Robot) =
  rotate90(r.facing)

proc right*(r: var Robot) =
  rotate270(r.facing)

proc place*(r: var Robot) =
  echo "Place"

proc report*(r: var Robot) =
  echo "Report"


