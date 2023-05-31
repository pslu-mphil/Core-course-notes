<!-- Useful templates -->

<!-- Figure -->
```{figure} figures/FIGNAME.EXT
---
name: fig:NAME_OF_FIGURE
figclass: margin-caption
width: 90%
---
CAPTION
```

reference with {numref}`fig:NAME_OF_FIGURE`

<!-- Equation -->
```{math}
:label: eq:LABEL
LATEX_EQUATION
```

reference with {eq}`eq:LABEL`

<!-- Unit side-note -->
```{margin} Units!
:class: units
$$
UNIT_DECLARATIONS
$$
```

<!-- Table -->
:header-rows: 1
:name: NAME_OF_TABLE
:stub-columns: 1
:widths: 28 18 18 18 18 

* - $d_1 \ (\mathrm{\mu m})$ \ $d_2 \ (\mathrm{\mu m})$
  - 0.01
  - 0.1
  - 1.0
  - 10.0
* - 0.01
  - 67
  -
  -
  -
* - 0.1
  - 180
  - 8.6
  -
  -
* - 1.0
  - 1700
  - 24
  - 3.5
  -
* - 10.0
  - 16000
  - 220
  - 10.3
  - 3.0
```