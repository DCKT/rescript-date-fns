type intervalObject = {
  start: Js.Date.t,
  @as("end")
  end_: Js.Date.t,
}

type durationObject = {
  years: option<int>,
  months: option<int>,
  days: option<int>,
  hours: option<int>,
  minutes: option<int>,
  seconds: option<int>,
}

type dateFnsLocale

@module("date-fns/locale")
external frLocale: dateFnsLocale = "fr"
@module("date-fns/locale")
external enLocale: dateFnsLocale = "enUS"

type options = {locale: dateFnsLocale}

@module("date-fns") external setDefaultOptions: options => unit = "setDefaultOptions"

// intervals

@module("date-fns")
external intervalToDuration: (~interval: intervalObject) => durationObject = "intervalToDuration"

@module("date-fns")
external distanceInWordsToNow: Js.Date.t => string = "formatDistanceToNow"

@module("date-fns/differenceInMinutes")
external differenceInMinutes: (Js.Date.t, Js.Date.t) => float = "differenceInMinutes"

@module("date-fns/differenceInDays")
external differenceInDays: (Js.Date.t, Js.Date.t) => int = "differenceInDays"

@module("date-fns")
external areIntervalsOverlapping: (intervalObject, intervalObject, Js.t<'a>) => bool =
  "areIntervalsOverlapping"

@module("date-fns")
external eachDayOfInterval: intervalObject => array<Js.Date.t> = "eachDayOfInterval"

@module("date-fns")
external isWithinInterval: (Js.Date.t, intervalObject) => bool = "isWithinInterval"

// parse

@module("date-fns")
external parseISO: string => Js.Date.t = "parseISO"

// format

@module("date-fns") external formatWithPattern: (Js.Date.t, string) => string = "format"

type formatWithPatternOptions = {firstWeekContainsDate?: int}

@module("date-fns")
external formatWithPatternWithOptions: (Js.Date.t, string, formatWithPatternOptions) => string =
  "format"

@module("date-fns")
external lightFormat: (Js.Date.t, string) => string = "lightFormat"

@module("date-fns")
external formatDuration: durationObject => string = "formatDuration"

// set

@module("date-fns")
external setSeconds: (Js.Date.t, float) => Js.Date.t = "setSeconds"
@module("date-fns")
external setMinutes: (Js.Date.t, float) => Js.Date.t = "setMinutes"
@module("date-fns")
external addMinutes: (Js.Date.t, float) => Js.Date.t = "addMinutes"
@module("date-fns")
external addSeconds: (Js.Date.t, float) => Js.Date.t = "addSeconds"
@module("date-fns")
external setHours: (Js.Date.t, float) => Js.Date.t = "setHours"
@module("date-fns")
external addHours: (Js.Date.t, float) => Js.Date.t = "addHours"
@module("date-fns")
external addDays: (Js.Date.t, int) => Js.Date.t = "addDays"
@module("date-fns")
external subDays: (Js.Date.t, int) => Js.Date.t = "subDays"
@module("date-fns")
external subMinutes: (Js.Date.t, float) => Js.Date.t = "subMinutes"
@module("date-fns")
external startOfDay: Js.Date.t => Js.Date.t = "startOfDay"
@module("date-fns")
external endOfDay: Js.Date.t => Js.Date.t = "endOfDay"
@module("date-fns")
external startOfWeek: Js.Date.t => Js.Date.t = "startOfWeek"
@module("date-fns")
external endOfWeek: Js.Date.t => Js.Date.t = "endOfWeek"
@module("date-fns")
external addWeeks: (Js.Date.t, float) => Js.Date.t = "addWeeks"
@module("date-fns")
external addMonths: (Js.Date.t, float) => Js.Date.t = "addMonths"
@module("date-fns")
external subMonths: (Js.Date.t, float) => Js.Date.t = "subMonths"
@module("date-fns")
external startOfMonth: Js.Date.t => Js.Date.t = "startOfMonth"
@module("date-fns")
external endOfMonth: Js.Date.t => Js.Date.t = "endOfMonth"

// booleans

@module("date-fns")
external isValid: Js.Date.t => bool = "isValid"

@module("date-fns")
external isEqual: (Js.Date.t, Js.Date.t) => bool = "isEqual"

@module("date-fns") external isPast: Js.Date.t => bool = "isPast"
@module("date-fns") external isFuture: Js.Date.t => bool = "isFuture"
@module("date-fns")
external isBefore: (Js.Date.t, Js.Date.t) => bool = "isBefore"
@module("date-fns")
external isAfter: (Js.Date.t, Js.Date.t) => bool = "isAfter"

@module("date-fns") external isToday: Js.Date.t => bool = "isToday"
@module("date-fns")
external isSameDay: (Js.Date.t, Js.Date.t) => bool = "isSameDay"
@module("date-fns") external isYesterday: Js.Date.t => bool = "isYesterday"
@module("date-fns") external isTomorrow: Js.Date.t => bool = "isTomorrow"

@module("date-fns") external isThisWeek: Js.Date.t => bool = "isThisWeek"

@module("date-fns")
external isThisMonth: Js.Date.t => bool = "isThisMonth"
@module("date-fns")
external isSameMonth: (Js.Date.t, Js.Date.t) => bool = "isSameMonth"
@module("date-fns")
external isFirstDayOfMonth: Js.Date.t => bool = "isFirstDayOfMonth"

// other

@module("date-fns")
external getWeekNumber: Js.Date.t => int = "getWeek"

@module("date-fns")
external getTime: Js.Date.t => float = "getTime"
@module("date-fns")
external getDay: Js.Date.t => int = "getDay"
@module("date-fns")
external getHours: Js.Date.t => int = "getHours"

@module("date-fns")
external parse: string => Js.Date.t = "parse"

@module("date-fns")
external nextTuesday: Js.Date.t => Js.Date.t = "nextTuesday"
@module("date-fns")
external nextWednesday: Js.Date.t => Js.Date.t = "nextWednesday"
@module("date-fns")
external nextThursday: Js.Date.t => Js.Date.t = "nextThursday"
@module("date-fns")
external nextFriday: Js.Date.t => Js.Date.t = "nextFriday"
@module("date-fns")
external nextSaturday: Js.Date.t => Js.Date.t = "nextSaturday"
@module("date-fns")
external nextSunday: Js.Date.t => Js.Date.t = "nextSunday"

@module("date-fns")
external isMonday: Js.Date.t => bool = "isMonday"
@module("date-fns")
external isTuesday: Js.Date.t => bool = "isTuesday"
@module("date-fns")
external isWednesday: Js.Date.t => bool = "isWednesday"
@module("date-fns")
external isThursday: Js.Date.t => bool = "isThursday"
@module("date-fns")
external isFriday: Js.Date.t => bool = "isFriday"
@module("date-fns")
external isSaturday: Js.Date.t => bool = "isSaturday"
@module("date-fns")
external isSunday: Js.Date.t => bool = "isSunday"

@module("date-fns")
external minutesToHours: int => int = "minutesToHours"
