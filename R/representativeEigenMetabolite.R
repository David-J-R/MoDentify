#' Eigen Metabolite as Module Representative
#'
#' @import data.table
#' @param data a \code{\link[data.table]{data.table}}, containg the values of the current module,
#'  with three columns: name, sampleID and z-score.
#'
#' @return
#' @export
#' 
#' @references
#' \insertRef{Do2017}{MoDentify}
#' @references
#' \insertRef{Langfelder2007}{MoDentify}
#'
#' @examples
representativeEigenMetabolite <- function(data){
    if ("met.name" %in% colnames(data)) {
        data <- dcast(data, sampleID ~ met.name, value.var = "z.score")
    } else {
        data <- dcast(data, sampleID ~ name, value.var = "z.score")
    }
    rownames(data) <- data$sampleID
    data$sampleID <- NULL
    data <- as.data.frame(data)
    eigendata <- eigenMetabolites(data = data, method = "PCA")
    return(data.table(representative = eigendata$M$Group))
}