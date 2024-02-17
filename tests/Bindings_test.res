open RescriptBun
open Test

test("Sample", () => {
  let now = Js.Date.make()
  let yesterday = now->DateFns.subDays(1)
  let isoDate = "2024-02-17T16:59:23.164Z"

  expect(yesterday->DateFns.isYesterday)->Expect.toBe(true)
  expect(isoDate->DateFns.parseISO->DateFns.isValid)->Expect.toBe(true)
})
