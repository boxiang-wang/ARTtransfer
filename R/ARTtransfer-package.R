#' ARTtransfer: Adaptive and Robust Transfer Learning for Enhanced Model Performance
#'
#' The ARTtransfer package implements an adaptive and robust transfer learning (ART) pipeline
#' using various machine learning models. It integrates information from auxiliary datasets (source domains) 
#' to enhance model performance on the primary task (target domain). The package is designed to be robust 
#' against negative transfer, a phenomenon where auxiliary data can degrade the model’s performance.
#' The ART framework is general and flexible. To further enhance model interpretability, the package provides variable importance metrics, 
#' assessing the contribution of each variable in the final model.
#'
#' @section Functions:
#' - \code{ART()}: Main function for performing adaptive and robust transfer learning.
#' - \code{generate_data()}: Generates synthetic datasets for transfer learning simulations.
#' - Wrapper functions: Functions like \code{fit_lm()}, \code{fit_logit()}, and \code{fit_random_forest()} 
#'   are used to fit models in the ART framework.
#'
#' @section Examples:
#' To perform ART on synthetic data:
#' \code{
#' dat <- generate_data(n0=100, K=3, nk=50, is_noise=TRUE, p=10)
#' fit <- ART(dat$X, dat$y, dat$X_aux, dat$y_aux, dat$X_test, func=fit_lm, lam=1)
#' }
#'
#' For more details, see the documentation for individual functions.
#' @importFrom stats coefficients glm lm predict rnorm rbinom
#' @importFrom glmnet glmnet cv.glmnet
#' @importFrom gbm gbm
#' @importFrom nnet nnet
#' @importFrom randomForest randomForest
#' 
#' @name ARTtransfer
#' @keywords internal
"_PACKAGE"

