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