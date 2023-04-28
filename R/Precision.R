#' Calculate precision
#'
#' This function calculates the precision based on the number of true positives and false positives.
#'
#' @param true_positives A numeric value representing the number of true positives
#' @param false_positives A numeric value representing the number of false positives
#' @return An object of class "precision" with the calculated precision and additional attributes
#' @example precision(60,62)
#' [1] 0.4918033
#' attr(,"true_positives")
#' [1] 60
#' attr(,"false_positives")
#' [1] 62
#' @export
precision <- function(true_positives, false_positives) {

  prec <- true_positives / (true_positives + false_positives)

  class(prec) <- "precision"

  attributes(prec) <- list(true_positives = true_positives, false_positives = false_positives)

  return(prec)
}


