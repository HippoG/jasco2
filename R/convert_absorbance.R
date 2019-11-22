#' convert_absorbance
#'
#' given a tibble containing a column 'Absorbance', the concentration of a chemical
#' that Abs is measured are calculated and attached to the tibble in the specified unit.
#'
#' @param data a tibble with at least one column 'Absorbance'.
#' @param coef either the name of any chemical found in `chemicals_specs` or a
#' user-provided appropriate absorption coefficient (a named vector, eg. `setNames(7282, "chemical1")`)
#' @keywords jasco
#' @importFrom checkmate assert check_tibble check_names check_count check_character assert_subset
#' @importFrom magrittr %>% %$%
#' @importFrom rlang !! :=
#' @importFrom dplyr mutate filter
#' @export
#' @examples
#' convert_absorbance()

convert_absorbance <- function(data, coef) {
  
  assert(
    check_tibble(data),
    check_names(names(data), must.include = "Absorbance"),
    combine = "and"
  )
  
  assert(
    check_character(coef, len = 1),
    assert(
      check_count(coef, positive = TRUE),
      check_character(names(coef), len = 1),
      combine = "and"
    ),
    combine = "or"
  )
  
  if (is.character(coef) == TRUE) {
    assert_subset(coef, choices = chemicals_specs$Chemical)
    coef_value <- filter(chemicals_specs, Chemical == !! coef) %$% coef
    coef_name <- filter(chemicals_specs, Chemical == !! coef) %$% Chemical
  }
  
  else {
    coef_value <- coef
    coef_name <- names(coef)
  }

  data %>% mutate(., !! coef_name := (Absorbance / coef_value))
}


