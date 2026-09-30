# Guitar Practice — Triads Across the Fretboard

A practical course for breaking out of a plateau by learning to **see** major and minor triads,
**choose the nearest inversion**, **hear the top-line melody**, and connect shapes to the scales you
already know. Built around voice leading, minor harmony, chord melody, and classic song play-alongs.

*Prepared for Matt Naughton · Standard tuning E A D G B E*

## What's in this repo

| File | What it is |
|---|---|
| **`index.html`** | The **Visual Edition** — an interactive, printable workbook where every triad shape is drawn as a real fretboard diagram, color-coded by chord function, with a Notes / Intervals / Fingers toggle and horizontal "neck maps" that show how the three inversions connect up the neck. |
| **`song-labs.html`** | **Song labs** — one printable page per song (*The Weight, Dead Flowers, Friend of the Devil, Into the Mystic, Franklin's Tower, Ripple*) that drops the triad shapes into real progressions with nearest-inversion voicings, top-line melody, and a song-specific drill for the Day-3 APPLY block. |
| **`scales-up-the-neck.html`** | **Broken-interval scale charts (3rds, 4ths, 5ths, 7ths, octaves) in C major** re-drawn on the *y-axis* — the same line climbing up the neck on the A-D-G / G-B-E (and D-G-B) string sets, with every note labeled by name **and** scale degree to recite aloud. Includes a **low D-G-B version that drops an octave** to stay under the 12th fret, and a **"bridge"** that fills the skipped string with the 5th (`1-5-8`) then drops the top to `1-5-♭7` for a **Mixolydian** / dominant sound (borrowed vs diatonic ♭7s flagged). Built for "third-hunting" and learning fretboard geography. |
| `one-pagers.html` | Printable one-page sheets for each module, sized to fit a music stand. |
| `practice-tools.html` | In-browser metronome, bass-drum/backbeat groove, chord + bass backing tracks, and a Major/Minor ear trainer. |
| `practice-plan.md` | The realistic 30-min × 3-day/week plan and 8-week cycle. |
| **`triads-course.md`** | The full course text in clean Markdown (readable directly on GitHub). |
| `Triad_Fretboard_Course_Version_2_Matt_Naughton.docx` | The original Word document. |

## How to view the Visual Edition

`index.html` is fully self-contained (no external dependencies), so you can:

1. **Download it and open it in any browser** — double-click the file. Use the browser's **Print** to make a paper copy; the layout is print-optimized.
2. **Preview it online without downloading** via htmlpreview:
   <https://htmlpreview.github.io/?https://github.com/MNaughton1981/Guitar-Practice/blob/main/index.html>
   *(works once this is merged to `main`)*
3. **GitHub Pages** — enable Pages on `main` in the repo settings and it will be served at
   `https://mnaughton1981.github.io/Guitar-Practice/`.

## How to read a diagram

- Six vertical lines = the six strings, **low E on the left, high e on the right**.
- The small number to the left of **every** box = the fret of the top row; a thick top bar = the nut. Open-position shapes show both a nut bar and a `1`, so all diagrams in a row carry a consistent position reference.
- `×` above a string = don't play it; `○` = play it open.
- Dots are color-coded by **chord function**:
  - 🔵 **Root (1)**  🟠 **Third (3 / b3)**  🟢 **Fifth (5)**
- Use the **Notes / Intervals / Fingers** toggle at the top to flip every diagram at once.

## Improvements made in the Visual Edition

- **Added ~26 rendered fretboard diagrams** for every triad shape in the course (C major and C minor on D-G-B, A-D-G, and G-B-E; the four qualities; the key drill; and the chord-melody exercise).
- **Added two horizontal "neck maps"** showing the same C major chord's three inversions connecting up the neck on one string set — the key visualization for seeing the fretboard as one connected map.
- **Interactive label toggle** (note names / intervals / fingerings) so the same diagram serves theory study and grip drilling.
- **Color-coding by chord function** so major vs. minor is visible at a glance (watch the 3rd change color/label).
- **Print-optimized styling** for a clean paper workbook.

### One content correction

The original Module 2 "Key drill" listed the **G** chord (D-G-B frets `5-4-3`) with *"top note G."*
Those frets spell G–B–**D**, so the highest note (B-string, fret 3) is actually **D**. The top voice of the
`G–C–D–C` loop is therefore **D–E–D–E** (an upper-neighbor melody), not G-E-D-E. This is fixed in the
Visual Edition, with a note explaining it. All other fret positions and inversions in the course were
verified correct against standard tuning.
