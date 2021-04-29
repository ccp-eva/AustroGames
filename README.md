

[![Zenodo DOI](https://img.shields.io/badge/DOI-Zenodo-blue)](https://doi.org/10.5281/zenodo.4675217)

[![HSSC DOI](https://img.shields.io/badge/DOI-Article-success)](https://doi.org/10.1057/s41599-021-00785-y)


AustroGames
==========
This R package accompanies the publication by Leisterer-Peoples, et al. (2021).

This package contains the game data (`Games`) and the filtering options (`game_filter(...)`), as mentioned in our publication.

The raw data, the codeable passages on games from the original sources, are available upon request.

# Installing the package
To use the game filter and access the game data, you need to install the `devtools` package first from cran by using:
```r
install.packages("devtools")
```

Then you can install the AustroGames package:
```r
devtools::install_github("ccp-eva/AustroGames")
```
To load the package and data:
```r
library(AustroGames)

data(Games)
data(Descriptions)
data(Cultures)
data(Sources)
```
The data can be examined further:
```r
str(Games)
head(Games)
dim(Games)
colnames(Games)
```

To apply filters to the data, use `game_filter`. 

In the following example of `game_filter`, we select the rows that were coded as being a rule-based game (i.e., no simple play), games that were coded as having a non-local origin (i.e., introduced into the cultural group), and games from ethnolinguistic groups that correspond to the Austronesian language phylogeny from Gray et al. (2009).
```r
d <- game_filter( Games,
  clean_games = TRUE,
  clean_ABVD = FALSE,
  clean_GS = FALSE,
  clean_origin = "only_nonlocal",
  clean_pulotu = FALSE,
  clean_pulotu_time_0 = FALSE,
  clean_pulotu_time_50 = FALSE,
  clean_phylo = TRUE
)
```


# Getting help
For further help on the filtering options and data contents, see `?game_filter` `?Games` `?Descriptions` `?Cultures` `?Sources` and `?AustroGames`. Also see our article: https://doi.org/10.1057/s41599-021-00785-y for more information on data collection and data coding.

