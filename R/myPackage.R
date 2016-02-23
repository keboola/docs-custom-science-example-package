# Sample skeleton for custom science
#

#' Main application entrypoint
#'
#' @import keboola.r.docker.application
#' @param datadir Path to data directory.
doSomething <- function(datadir) {
  # read input
  data <- read.csv(file = file.path(datadir, "in/tables/source.csv"));

  # do something
  app <- DockerApplication$new(datadir)
  app$readConfig()
  data['double_number'] <- data['number'] * app$getParameters()$multiplier

  # write output
  write.csv(data, file = file.path(datadir, "out/tables/result.csv"), row.names = FALSE)
}
