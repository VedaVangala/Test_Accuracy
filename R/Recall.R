#' Calculate recall
#'
#' This function calculates the recall based on the number of true positives and false negatives.
#'
#' @param true_positives A numeric value representing the number of true positives
#' @param false_negatives A numeric value representing the number of false negatives
#' @return An object of class "recall" with the calculated recall and additional attributes
#' @example recall(89,20)
#' [1] 0.8165138
#' attr(,"true_positives")
#' [1] 89
#' attr(,"false_negatives")
#' [1] 20
#' @export
recall <- function(true_positives, false_negatives) {

  rec <- true_positives / (true_positives + false_negatives)

  class(rec) <- "recall"

  attributes(rec) <- list(true_positives = true_positives, false_negatives = false_negatives)

  return(rec)
}




