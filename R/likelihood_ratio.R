#' Calculate positive likelihood ratio
#'
#' This function calculates the positive likelihood ratio based on sensitivity and specificity.
#'
#' @param sensitivity A numeric value representing sensitivity
#' @param specificity A numeric value representing specificity
#' @return An object of class "lr_plus" with the calculated positive likelihood ratio and additional attributes
#' @example lr_plus(95,93)
#' [1] -1.032609
#' attr(,"sensitivity")
#' [1] 95
#' attr(,"specificity")
#' [1] 93
#' @export
lr_plus <- function(sensitivity, specificity) {

  lr_plus_val <- sensitivity / (1 - specificity)

  class(lr_plus_val) <- "lr_plus"

  attributes(lr_plus_val) <- list(sensitivity = sensitivity, specificity = specificity)

  return(lr_plus_val)
}


#' Calculate negative likelihood ratio
#'
#' This function calculates the negative likelihood ratio based on sensitivity and specificity.
#'
#' @param sensitivity A numeric value representing sensitivity
#' @param specificity A numeric value representing specificity
#' @return An object of class "lr_minus" with the calculated negative likelihood ratio and additional attributes
#' @example lr_minus(95,93)
#' [1] -1.010753
#' attr(,"sensitivity")
#' [1] 95
#' attr(,"specificity")
#' [1] 93
#' @export
lr_minus <- function(sensitivity, specificity) {

  lr_minus_val <- (1 - sensitivity) / specificity

  class(lr_minus_val) <- "lr_minus"

  attributes(lr_minus_val) <- list(sensitivity = sensitivity, specificity = specificity)

  return(lr_minus_val)
}
