import basic2d

type Point = TPoint2d

type
  TableObj* = object
    llc*, urc*: Point

proc contains*(t: TableObj, p: Point): bool =
  case radToDeg(angle(t.llc, p)):
    of 0..90:
      case radToDeg(angle(p, t.urc)):
        of 0..90:
          true
        else:
          false
    else:
      false

proc Table*(llc, urc: Point): TableObj =
  TableObj(llc: llc, urc: urc)

proc Table*(): TableObj =
  TableObj()
