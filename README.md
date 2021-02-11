

[![DOI](https://zenodo.org/badge/192348015.svg)](https://zenodo.org/badge/latestdoi/192348015)


AustroGames
==========
This R package accompanies the publication by Leisterer-Peoples, et al. (submitted).

This package contains the game data (`Games`) and the filtering options (`game_filter(...)`), as mentioned in our publication.

# Installing the package
To use the game filter and access the game data, you need to install the `devtools` package first from cran by using:
```
install.packages("devtools")
```
or from the development version on GitHub
```
devtools::install_github("r-lib/devtools")
```

Then you can install the AustroGames package:
```
devtools::install_github("ccp-eva/AustroGames")
```
To load the package and game data:
```
library(AustroGames)

data(Games)
data(Descriptions)
data(Cultures)
data(Sources)
```
The data can be viewed:
```
str(Games)
str(Descriptions)
str(Cultures)
str(Sources)
```

To apply filters to the game data, use `game_filter`. 

In the following example of `game_filter`, we select the rows that were coded as being a rule-based game (i.e., no simple play), games that were coded as having a foreign origin (i.e., introduced into the cultural group), and games from ethnolinguistic groups that correspond to the Austronesian language phylogeny from Gray et al. (2009).
```
d <- game_filter( Games , clean_games = TRUE ,  clean_foreign = "only_foreign" , clean_phylo = TRUE )
```

# Getting help
For further help on the filtering options and game data contents, see `?game_filter` `?Games` `?Descriptions` `?Cultures` `?Sources` and `?AustroGames`. Also see our publication here: (URL coming soon) for more information on data collection and data coding.

# Adding new game data to `Games`
Users are encouraged to add new data to the game data (.csv files).

