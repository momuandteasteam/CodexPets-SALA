# Animation specification

The atlas uses eight columns and eleven rows. Every cell is `192 × 208` px; the complete atlas is `1536 × 2288` px.

| Row | State | Frames | Purpose |
| ---: | --- | ---: | --- |
| 0 | `idle` | 6 | Calm breathing and blinking |
| 1 | `running-right` | 8 | Rightward drag movement |
| 2 | `running-left` | 8 | Leftward drag movement |
| 3 | `waving` | 4 | Greeting gesture |
| 4 | `jumping` | 5 | Playful vertical jump |
| 5 | `failed` | 8 | Blocked, failed, or cancelled reaction |
| 6 | `waiting` | 6 | Waiting for approval or input |
| 7 | `running` | 6 | Active task work or processing |
| 8 | `review` | 6 | Reviewing completed output |
| 9 | `look-row-9` | 8 | `000` through `157.5` degrees |
| 10 | `look-row-10` | 8 | `180` through `337.5` degrees |

## Look-direction order

```text
row 9:  000, 022.5, 045, 067.5, 090, 112.5, 135, 157.5
row 10: 180, 202.5, 225, 247.5, 270, 292.5, 315, 337.5
```

Directions use viewer/screen coordinates: `000` is up, `090` is screen-right, `180` is down, and `270` is screen-left.

Unused cells in rows with fewer than eight frames are fully transparent.
