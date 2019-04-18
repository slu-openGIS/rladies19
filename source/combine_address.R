#' Combine Address Data
#' 
#' @description This combines and properly formats a single address field from the
#'     \code{ILEADSStreet} and the \code{ILEADSAddress} variables.
#' 
#' @usage combine_address(.data)
#' 
#' @param .data A tbl created by \code{\link{cs_collapse}}
#' 
combine_address <- function(.data){
  
  # clean address
  .data %>%
    dplyr::mutate(address = stringr::str_c(ILEADSAddress, ILEADSStreet, sep = " ")) %>%
    dplyr::mutate(address = ifelse(stringr::str_detect(string = address, pattern = "^[0\\b]") == TRUE,
                                   stringr::str_replace(string = address, pattern = "^[0\\b]", replacement = ""),
                                   address)) %>%
    dplyr::mutate(address = stringr::str_trim(address)) -> .data
  
  # return output
  return(.data)
    
  
}