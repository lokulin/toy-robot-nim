import basic2d

export rotate90, rotate270, `&`, move

type
  Point* = TPoint2d
  Heading* = TVector2d
  Table* = object
    llc, urc: Point

proc newPoint*(x, y: float): Point =
  Point(x: x, y: y)

proc newHeading*(x, y: float): Heading =
  Heading(x: x, y: y)

proc contains*(t: Table, p: Point): bool =
  case radToDeg(angle(t.llc, p)):
    of 0..90:
      case radToDeg(angle(p, t.urc)):
        of 0..90:
          true
        else:
          false
    else:
      false

proc newTable*(llc, urc: Point): Table =
  Table(llc: llc, urc: urc)

proc newTable*(): Table =
  Table()
