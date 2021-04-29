#' A Game Filtering Function
#'
#' Filter the game data from the Leisterer-Peoples et al. (2021) 
#' publication.
#' @param ... \code{Games} or an object with \code{Games}.
#' @param clean_games logical. Default set to FALSE. If TRUE, only includes 
#' rule-based games.
#' @param clean_ABVD logical, default set to FALSE. If TRUE, only includes 
#' games with an ABVD code.
#' @param clean_GS logical, default set to FALSE. If TRUE, only include games 
#' with a goal structure code.
#' @param clean_origin several options. \code{remove_nonlocal} removes only 
#' the games that were coded non-local, but keeps those that were undetermined
#' or NA. \code{only_nonlocal} removes all games except those coded as 
#' introduced \code{only_local} removes all games except those that were 
#' coded as local. \code{keep_all} keeps all of the games without any 
#' origin filter.
#' @param clean_pulotu logical, default set to FALSE. If TRUE, includes games 
#' with an ABVD code that matches ABVD codes from Pulotu (Pulotu version: 
#' 2015).
#' @param clean_pulotu_time_0 logical, default set to FALSE. If TRUE, includes 
#' games with overlapping time
#' frames (+/- 0 years) from Pulotu time foci (Pulotu version: 2015).
#' @param clean_pulotu_time_50 logical, default set to FALSE. If TRUE, 
#' includes games with nearly overlapping time frames (+/- 50 years) from 
#' Pulotu time foci (Pulotu version: 2015).
#' @param clean_phylo logical, default set to FALSE. If TRUE, includes games 
#' with ABVD codes that match ABVD codes on the Austronesian language 
#' phylogeny from Gray et al. (2009).
#' @export
#' @references Leisterer-Peoples et al. (2021). Austronesian Game 
#' Taxonomy.
#' @seealso \url{https://github.com/ccp-eva/AustronesianGames}
#' @examples
#' game_filter(Games, clean_games = TRUE,  clean_origin = "keep_all")
#' game_filter(Games, clean_games = TRUE,  clean_origin = "remove_nonlocal",
#' clean_pulotu = TRUE,
#' clean_pulotu_time_50 = TRUE)
#' game_filter(Games, clean_games = TRUE,  clean_origin = "only_nonlocal", 
#' clean_pulotu = TRUE,
#' clean_pulotu_time_0 = TRUE)

game_filter <- function( ... , clean_games = FALSE , clean_ABVD = FALSE , clean_GS = FALSE , clean_origin = "keep_all" , clean_pulotu = FALSE , clean_pulotu_time_0 = FALSE , clean_pulotu_time_50 = FALSE , clean_phylo = FALSE ){

	if( clean_games == TRUE ){
		Games <- Games[ which( Games$Game == "1" ), ]
	}
	if( clean_ABVD == TRUE ){
		Games <- Games[ which( !is.na( Games$ABVD_code )), ]
	}
	if( clean_GS == TRUE ){
		Games <- Games[ which( !is.na( Games$Goal_structure )), ]
	}
	if( clean_origin == "remove_nonlocal" ){
		Games <- Games[ which( Games$Introduced_coding == "local" | Games$Introduced_coding == "undetermined" | is.na( Games$Introduced_coding )), ]
	}
	if( clean_origin == "only_nonlocal" ){
		Games <- Games[ which( Games$Introduced_coding == "nonlocal" ), ]
	}
	if( clean_origin == "only_local" ){
		Games <- Games[ which( Games$Introduced_coding == "local" ), ]
	}
	if( clean_origin == "keep_all" ){
		paste0( "keep all: no origin filter applied" )
	}
	if( clean_pulotu == TRUE ){
		Games <- Games[ which( Games$Game_ID %in% unlist( strsplit( Cultures$Game_ID[ which( !is.na( Cultures$Pulotu_culture ))], ";" ))),]
	}
	if( clean_pulotu_time_0 == TRUE ){
		Games <- Games[ !is.na( Games$Pulotu_time_ok_0 ) & Games$Pulotu_time_ok_0 == 1, ]
	}
	if( clean_pulotu_time_50 == TRUE ){
		Games <- Games[ !is.na( Games$Pulotu_time_ok_50 ) & Games$Pulotu_time_ok_50 == 1, ]
	}
	if( clean_phylo == TRUE ){
		Games <- Games[ which( Games$Game_ID %in% unlist( strsplit( Cultures$Game_ID[ which( !is.na( Cultures$Phylo_TreeTaxaName ))], ";" ))), ]
	}
	
	return( Games )
}
