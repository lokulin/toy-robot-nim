type Option*[T] = object of RootObj
  x*: T
  isDefined*: bool

type NoneObj[T] = object of Option[T]
type SomeObj[T] = object of Option[T]

proc Some*[A](x: A): SomeObj[A] =
  SomeObj[A](x: x, isDefined: true)

proc None*[A](x: A): NoneObj[A] =
  NoneObj[A]()

proc isNone*[A: Option|SomeObj|NoneObj](this: A): bool =
  not this.isDefined

proc isSome*[A: Option|SomeObj|NoneObj](this: A): bool =
  this.isDefined

proc get*[A: Option|SomeObj|NoneObj, B](this: A): B =
  if this.isEmpty:
    raise newException(NoSuchElement, "Failed to get from None")
  this.x

proc getOrElse*[A: Option|SomeObj|NoneObj, B](this: A, default: B): B =
  if this.isDefined:
    this.x
  else:
    default

proc isEmpty*[A: Option|SomeObj|NoneObj](this: A): bool =
  not this.isDefined

type NoSuchElement* = object of Exception
