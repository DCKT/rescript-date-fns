# rescript-date-fns

ReScript bindings for [date-fns](https://date-fns.org/) (targeted version : `~3.3.1`)

## Setup

1. Install the module

```bash
bun install @dck/rescript-date-fns
# or
yarn install @dck/rescript-date-fns
# or
npm install @dck/rescript-date-fns
```

2. Add it to your `rescript.json` config

```json
{
  "bsc-dependencies": ["@dck/rescript-date-fns"]
}
```

## Usage

The functions can be accessed through `DateFns` module.

```rescript
let now = Js.Date.make()
let yesterday = now->DateFns.subDays(1)
let isoDate = "2024-02-17T16:59:23.164Z"

Js.log(yesterday->DateFns.isYesterday) // true
Js.log(isoDate->DateFns.parseISO->DateFns.isValid) // true
```

## Development

Install deps

```bash
bun install
```

Compiles files

```bash
bun run dev
```

Run tests

```bash
bun test
```
