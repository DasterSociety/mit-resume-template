# mit-resume

A Typst template for a two-page PhD resume that follows [MIT CAPD](https://capd.mit.edu/)'s
suggested formatting rules. Blank, placeholder-filled, and meant to be filled in section by
section — no content of your own is baked in.

> **Not affiliated with MIT.** The formatting rules here are adapted from the publicly
> available resume guidance of MIT Career Advising & Professional Development (CAPD). This is
> an independent implementation, neither endorsed nor published by MIT, and the package name
> refers only to the guidance it follows. The MIT License below is the standard permissive
> software license and is unrelated to that guidance.

## What it enforces

The formatting is not stylistic preference; it is MIT's stated guidance, so the defaults are
floors rather than starting points:

- **0.5 in margins** and **10.5 pt body text** — MIT's stated minimums. Shrinking either to
  win space defeats the point.
- **Two pages maximum.** A PhD resume may run to two pages; a third is not a resume.
- **Small-caps, ruled section headings** with a single consistent entry block for every
  organization, so Education, Experience and everything else align identically.
- **No fixed section order.** MIT's rule is to list sections in order of importance *to the
  employer*, so the template ships them as independent `= Heading` blocks you reorder per
  application.
- **P-A-R bullets** (Project, Action, Result): strong verb first, a metric somewhere, two lines
  maximum, each bullet readable on its own. The template's bullets are fill-in-the-blank
  skeletons of that shape — replace the italic slots, keep the structure.
- **Contact fields are optional.** Any of `location`, `email`, `phone`, `linkedin`, `website`
  set to `none` is dropped from the header line rather than left blank.

## Requirements

- Typst (developed and tested against 0.15.1)
- Fonts: **Libertinus Serif** (body) and **Copperplate** (name). Copperplate ships with macOS;
  on Linux or Windows install it or change the `font:` argument in `lib.typ`, otherwise Typst
  substitutes silently and the header will not match the reference.

## Install

The template imports itself as a local Typst package, so register it once:

```sh
# macOS
ln -s "$(pwd)" "$HOME/Library/Application Support/typst/packages/local/mit-resume/0.1.0"

# Linux
ln -s "$(pwd)" "${XDG_DATA_HOME:-$HOME/.local/share}/typst/packages/local/mit-resume/0.1.0"
```

Run it from a clone of this repo. Symlinking (rather than copying) means edits to `lib.typ`
take effect immediately.

## Use

Scaffold a new resume from the template:

```sh
typst init @local/mit-resume:0.1.0 my-resume
cd my-resume
typst watch main.typ
```

Or write the import yourself in any file:

```typst
#import "@local/mit-resume:0.1.0": mit-resume, entry

#show: mit-resume.with(
  name: "FULL NAME",
  location: "City, ST",
  email: "email@email.com",
  phone: "(555) 555-5555",
  linkedin: "username",      // username only; the URL is built for you
  website: "www.website.com", // host only, no scheme
)

= Education
#entry(
  org: "University Name",
  location: "City, ST",
  title: "Candidate for PhD in [Field]",
  dates: "Expected YYYY",
  note: [Dissertation: _Working title of your dissertation_],
)

= Experience
#entry(
  org: "Organization Name",
  location: "City, ST",
  title: "Position Title",
  dates: [Mon YYYY -- Mon YYYY],
)[
  - Developed _the deliverable_ using _tools or methods_ to _address the problem_, improving
    _the metric_ by _N_% over _the prior baseline_
]
```

### `entry()`

| Argument   | Required | Renders as                                        |
| ---------- | -------- | ------------------------------------------------- |
| `org`      | yes      | Bold, left, joined with `location`                |
| `location` | no       | Bold, appended to `org`                           |
| `title`    | yes      | Bold italic, own row, full width                  |
| `dates`    | yes      | Right-aligned on the `org` row                    |
| `note`     | no       | Indented line — dissertation title, thesis, honors|
| trailing block | no   | Bullet list, full width                           |

Bullets go in a trailing content block — `#entry(...)[- first bullet]` — not a named argument.

## Layout

```
lib.typ            all styling: page setup, headings, contact line, entry()
template/main.typ  the fillable template — content only, shipped by `typst init`
resume.typ         dev preview; `typst watch resume.typ` renders template/main.typ
typst.toml         package manifest
```

Keeping content and styling separate is deliberate: `main.typ` should be editable without
reading `lib.typ`.

## License

MIT — see [LICENSE](LICENSE).
