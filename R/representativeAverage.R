#' Average Level as Module Representative
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
#' \insertRef{Chuang2007}{MoDentify}
#'
#' @examples
representativeAverage <- function(data){
    return(data[, .(representative = mean(z.score)), by = .(sampleID)])
}