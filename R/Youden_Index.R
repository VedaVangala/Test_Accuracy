#' Calculate Youden's index
#'
#' This function calculates Youden's index given sensitivity and specificity values.
#'
#' @param sensitivity A numeric value representing the sensitivity of a test.
#' @param specificity A numeric value representing the specificity of a test.
#' @return A Youden object with class "youden" and attributes sensitivity and specificity.
#' @export
#' @example youden(95,7)
#' 101
#' attr(,"sensitivity")
#' [1] 95
#' attr(,"specificity")
#' [1] 7
#' @references Youden, W. J. (1950). Index for rating diagnostic tests. Cancer, 3(1), 32-35.
youden <- function(sensitivity, specificity) {
  y <- sensitivity + specificity - 1
  class(y) <- "youden"
  attributes(y) <- list(sensitivity = sensitivity, specificity = specificity)
  return(y)
}
