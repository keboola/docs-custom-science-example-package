devtools::install_local('/home/')
library(keboola.r.custom.application)
doSomething(Sys.getenv("KBC_DATA_DIR"))
