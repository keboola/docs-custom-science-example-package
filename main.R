devtools::load_all('/home/')
library(keboola.r.custom.application)
doSomething(Sys.getenv("KBC_DATA_DIR"))
