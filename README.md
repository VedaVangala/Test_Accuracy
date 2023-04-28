# **Test_Accuracy**
This package provides analytical functions to find the accuracy of the diagnostic tests which will enable clinician to choose better diagnostic test according to particular patient.

Clinicians need insight into the possibility that an individual has a condition to arrive at therapeutic choices and give personalized treatment. This requires integrating knowledge of preliminary chance with diagnostic tests.Sensitivity and specificity are very crucial indicators for the accuracy of the diagnostic test and to know the validity of the diagnostic test. In addition to these indicators, other indicators like Positive Predictive Value (PPV), Negative Predictive Value(NPV), Likelihood ratios(LRs), Precision and Recall will assure about the outcome of the diagnostic tests which will guide the clinician to choose the type of diagnostic test needed according to the patient.

It includes code of functions Test_Ability(), lr_plus(), lr_minus(), youden(), precision(), recall() and pie_chart(). Data includes a few diagnostic tests with true positives, true negatives, false positives and false negatives. The description gives basic information about the package and author. It also includes a namespace generated by roxygen2. 



Test_Ability() function enables the medical practitioner to find the Sensitivity, Specificity, Positive Predictive Value(PPV) and Negative Predictive Value(NPV) of a particular diagnostic test upon input of the values(True Positives, False Positives, True Negatives and False Negatives).

lr_plus()function computes the positive likelihood ratio of the diagnostic test when values of sensitivity and Specificity are given as input.

lr_minus()function validates the negative likelihood ratio of the diagnostic test when values of sensitivity and Specificity are given as input.

youden() function gives the Youden's Index when sensitivity and Specificity are given as input.

precision()permits to find of accurate forecasts along with recall

recall() function when implemented gives a positive outcome proportion compared to all possible positive cases

pie_chart()allows finding which is the maximum of the input values which constitute a larger portion of all values and permits to come to a conclusion about the diagnostic test based on the requirements of medical practitioner.



**Installation to my package**


intsall.packages("devtools")


devtools::install_github(https://github.com/VedaVangala/Test_Accuracy)


[Accuracy Blog link] (https://vedanagapriya.blogspot.com/2023/04/package-accuracy.html)


**References**

Wickham, H. (2015). R Packages. (Chapter 7)

Matloff. N. (2011). The Artof R programming. (Chapter 13)

The R repository https://cran.r-project.org/web/packages

Dhamnetiya, D., Jha, R. P., Shalini, S., & Bhattacharyya, K. (2022). How to Analyze the Diagnostic Performance of a New Test? Explained with Illustrations. Journal of Laboratory Physicians, 14(1), 90-98. https://doi.org/10.1055/s-0041-1734019

Shreffler J, Huecker MR. Diagnostic Testing Accuracy: Sensitivity, Specificity, Predictive Values and Likelihood Ratios. [Updated 2023 Mar 6]. In: StatPearls [Internet]. Treasure Island (FL): StatPearls Publishing; 2023 Jan-. Available from: https://www.ncbi.nlm.nih.gov/books/NBK557491/
