# epiplaces <img src="man/figures/logo.svg" align="right" width='200'/>
<!-- badges: start -->
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

## tldr.
GIS is one of epidemiology's bestest friends. Sadly, GIS data can also be a pain. Your shape file broke ? Bummer. None of the shape names match anything ? Ouch. The local government just restructured the administrative divisions and now all your work is useless ? Sad face.

This package doesn't really fix all those issues, but it *is* a data repository of GIS data for Epicentre where the shapes and names have been vetted to match what appears in other datasets. With `epiplaces` you can easily load your map data into whichever project you want and avoid constant name validation scripts that exacerbate the risk of future failure. 

## example.

```{r}
epiplaces::load_map(country = 'drc',
                    level = 'region')
```

## countries available.
<!-- epimaps:availability -->

In addition, a country level map are available for the world and each continent (excluding
Antarctica).

## adding countries.
Open an [issue](https://github.com/ceisenhauer/epimaps/issues).

