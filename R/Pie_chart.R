#' Generate a pie chart with values and labels
#'
#' @param Values A numeric vector of values to be plotted
#' @param labels A character vector of labels for each value
#' @param col vector of colors for the pie chart (optional)
#' @return A pie chart of the input values with corresponding labels
#' @example
#' V<-c(95,93,7,5)
#' L<-c("TP","TN","FP","FN")
#' pie_chart(V,L)
#' @export
pie_chart <- function(Values, labels, col = NULL) {
  pie(Values, labels = labels, col = col)
}
