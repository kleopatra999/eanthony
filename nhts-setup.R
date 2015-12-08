setwd(Sys.getenv("RWD"))
if (.Platform$OS.type == 'windows') {
	options(monetdb.programpath.override=Sys.getenv("MONETDBINSTALLDIR"))
}
options(monetdb.debug.query=T)
years.to.download <- c( 1983 , 1990 , 1995 , 2001 , 2009 )

downloader::source_url("https://raw.github.com/ajdamico/asdfree/master/National%20Household%20Travel%20Survey/download%20and%20import.R" , prompt = FALSE , echo = TRUE)