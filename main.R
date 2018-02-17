devtools::load_all('/code/')
library(keboola.r.custom.application)
doSomething(Sys.getenv("KBC_DATADIR"))
