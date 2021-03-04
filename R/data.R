#' AustroGames: An R package with data on games played in cultural groups in 
#' the Austronesian language family
#'
#' @name AustroGames
#' @docType package
#' @description The package applies filters from the Leisterer-Peoples et 
#' al. (submitted) publication. The \code{game_filter} filters the games in 
#' several optional steps. Filters include: (non-)games, ABVD codes, goal 
#' structure coding, foreign games, matching the game ABVDs with ABVDs from 
#' Pulotu, matching the time frames of games to those from the 
#' open-access Pulotu dataset on figshare (version: 2015) with either 0 or 
#' 50 years added, and matching the ABVDs from the games with those from the
#' Austronesian language phylogeny (Gray et al. 2009). The game data can be 
#' downloaded here \url{https://github.com/ccp-eva/AustroGames}. To load 
#' data use \code{data(Games)}, \code{data(Descriptions)}, 
#' \code{data(Sources)}, and \code{data(Cultures)}. See 
#' \code{\link[AustroGames]{game_filter}}, 
#' \code{\link[AustroGames]{Games}}, \code{\link[AustroGames]{Sources}}, 
#' \code{\link[AustroGames]{Descriptions}}, and 
#' \code{\link[AustroGames]{Cultures}}.
#' @author Sarah M. Leisterer-Peoples (<sarah_peoples@eva.mpg.de>)
#' @seealso \url{https://github.com/ccp-eva/AustroGames}
NULL

#' @title Sources
#' @name Sources
#' @docType data
#' @usage data(Sources)
#' @description This dataset contains rich information on games and play 
#' from several cultural groups in the region of the Austronesian language 
#' family. Each row is a unique source.
#' @format A data frame with 215 rows and 7 variables:
#' \describe{
#' \item{\code{Source_ID}}{Unique source identifier}
#' \item{\code{eHRAF_Doc_ID}}{Document ID from eHRAF}
#' \item{\code{Publication_date}}{Publication date of the source}
#' \item{\code{Source_citation}}{Citation of the original source}
#' \item{\code{Time_frame}}{Time focus from the original source in years}
#' \item{\code{Time_type}}{Refers to the type of information used to determine
#' the time frame (field date, focus date)}
#' \item{\code{Description_ID}}{Description identifier in
#' \code{\link[AustroGames]{Descriptions}}}
#' }
#' @source Sarah M. Leisterer-Peoples
#' @seealso \url{https://github.com/ccp-eva/AustroGames}
NULL

#' @title Descriptions
#' @name Descriptions
#' @docType data
#' @usage data(Descriptions)
#' @description This dataset contains rich information on games and play 
#' from several cultural groups in the region of the Austronesian language 
#' family. Each row is a unique passage from a source and can correspond to 
#' several games in \code{\link[AustroGames]{Games}}.
#' @format A data frame with 1251 rows and 5 variables:
#' \describe{
#' \item{\code{Description_ID}}{Unique description identifier}
#' \item{\code{Source_ID}}{Corresponds to the Source_ID in
#' \code{\link[AustroGames]{Sources}}}
#' \item{\code{Game_ID}}{Corresponds to the Game_ID in
#' \code{\link[AustroGames]{Games}}}
#' \item{\code{Geographic_location}}{Geographic location mentioned by
#' the original source}
#' \item{\code{Geographic_location_uncertainty}}{Uncertainty in the
#' geographic location coding  (1 = uncertainty)}
#' }
#' @source Sarah M. Leisterer-Peoples
#' @seealso \url{https://github.com/ccp-eva/AustroGames}
NULL

#' @title Games
#' @name Games
#' @docType data
#' @usage data(Games)
#' @description This dataset contains rich information on games and play 
#' from several cultural groups in the region of the Austronesian language 
#' family. Each row is a unique game within a cultural group as defined by 
#' \code{\link[AustroGames]{Cultures}}.
#' @format A data frame with 952 rows and 18 variables:
#' \describe{
#' \item{\code{Game_ID}}{Unique game identifier specific to cultural group as
#' defined by ABVD}
#' \item{\code{Local_name}}{Name(s) of the game as indicated by the original
#' source(s)}
#' \item{\code{Common_name}}{Common name(s) of the game}
#' \item{\code{Description_ID}}{Refers to the IDs in
#' \code{\link[AustroGames]{Descriptions}}}
#' \item{\code{Game}}{Indicates whether the description qualifies as a game as
#' defined earlier in this publication (1 = game, 0 = not a game)}
#' \item{\code{Game_uncertainty}}{Uncertainty whether the description 
#' qualifies as a game}
#' \item{\code{Game_comments}}{Comments regarding the game description or 
#' other aspects of the data}
#' \item{\code{ABVD_code}}{Linguistic identifier from the Austronesian 
#' Basic Vocabulary Database (ABVD)}
#' \item{\code{ABVD_uncertainty}}{Uncertainty of the ABVD coding
#' (1 = uncertainty)}
#' \item{\code{Goal_structure}}{Indicates the goal structure of the game}
#' \item{\code{Goal_uncertainty}}{Uncertainty in the goal structure coding
#' (1 = uncertainty)}
#' \item{\code{Goal_comments}}{Comments regarding the goal structure coding}
#' \item{\code{Foreign_keywords}}{Indicates which keywords were found in the
#' game description(s)}
#' \item{\code{Foreign_coding}}{Whether the game description(s) indicate 
#' foreign origin (foreign, not foreign, undetermined)}
#' \item{\code{Foreign_uncertainty}}{Uncertainty in the foreign coding
#' (1 = uncertainty)}
#' \item{\code{Foreign_comments}}{Comments regarding the foreign coding}
#' \item{\code{Pulotu_time_ok_0}}{Indicates whether the "traditional" time
#' frame from Pulotu matches the time frame(s) from the game
#' (1 = same time frame, 0 = different time frames)}
#' \item{\code{Pulotu_time_ok_50}}{Indicates whether the "traditional" time
#' frame from Pulotu matches the time frame(s) from the game, +/- 50 years
#' (1 = same time frame, 0 = different time frames)}
#' }
#' @source Sarah M. Leisterer-Peoples
#' @seealso \url{https://github.com/ccp-eva/AustroGames}
NULL

#' @title Cultures
#' @name Cultures
#' @docType data
#' @usage data(Cultures)
#' @description This dataset contains rich information on games and play 
#' from several cultural groups in the region of the Austronesian language 
#' family. Each row is a unique cultural group.
#' @format A data frame with 107 rows and 10 variables:
#' \describe{
#' \item{\code{ABVD_code}}{Linguistic identifier from the Austronesian
#' Basic Vocabulary Database (ABVD)}
#' \item{\code{ABVD_language}}{Language corresponding to the ABVD_code in 
#' \code{\link[AustroGames]{Games}}}
#' \item{\code{Glottolog_code}}{Linguistic identifier from the glottolog
#' database}
#' \item{\code{ISO6393_code}}{Linguistic identifier from the ISO-639-3 
#' database}
#' \item{\code{ABVD_longitude}}{Longitude according to ABVD}
#' \item{\code{ABVD_latitude}}{Latitude according to ABVD}
#' \item{\code{Pulotu_culture}}{Name of the culture as indicated in the 
#' open-access Pulotu dataset on figshare (version: 2015)}
#' \item{\code{Phylo_TreeTaxaName}}{The name of the language on the 
#' Austronesian language phylogeny from Gray et al. (2009)}
#' \item{\code{Dplace_HRAF_name_ID}}{Name of the culture as indicated by
#' D-Place}
#' \item{\code{Game_ID}}{Corresponds to the Game_ID in
#' \code{\link[AustroGames]{Games}}}
#' }
#' @source Sarah M. Leisterer-Peoples
#' @seealso \url{https://github.com/ccp-eva/AustroGames}
NULL
