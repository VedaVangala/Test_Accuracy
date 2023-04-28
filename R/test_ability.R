#' Function to create test results object
#'
#' This function takes in four numeric values representing the sensitivity, specificity, positive predictive value (PPV), and negative predictive value (NPV) of a test, and returns a list containing the test results with attributes of class "test_results".
#'
#' @param Sensitivity numeric value representing the sensitivity of the test
#' @param Specificity numeric value representing the specificity of the test
#' @param PPV numeric value representing the positive predictive value of the test
#' @param NPV numeric value representing the negative predictive value of the test
#'
#' @return A list containing the test results with attributes of class "test_results"
#' @example
#' @export
test_results <- function(Sensitivity, Specificity, PPV, NPV) {
  res <- list(Sensitivity = Sensitivity, Specificity = Specificity, PPV = PPV, NPV = NPV)
  class(res) <- "test_results"
  return(res)
}

#' Function to calculate test ability
#'
#' This function takes in four numeric values representing the number of true positive (TP), false positive (FP), true negative (TN), and false negative (FN) test results, and returns an object of class "test_results" containing the test ability results.
#'
#' @param TP numeric value representing the number of true positive test results
#' @param FP numeric value representing the number of false positive test results
#' @param TN numeric value representing the number of true negative test results
#' @param FN numeric value representing the number of false negative test results
#'
#' @return An object of class "test_results" containing the test ability results
#' @example Test_Ability(95,93,7,5)
#' $Sensitivity
#' [1] 95
#' $Specificity
#' [1] 7
#' $PPV
#' [1] 50.53191
#' $NPV
#' [1] 58.33333
#' attr(,"class")
#' [1] "test_results"
#' @export
Test_Ability <- function(TP, FP, TN, FN) {
  Sensitivity <- TP / (TP + FN) * 100
  Specificity <- TN / (TN + FP) * 100
  PPV <- TP / (TP + FP) * 100
  NPV <- TN / (FN + TN) * 100
  return(test_results(Sensitivity, Specificity, PPV, NPV))
}
