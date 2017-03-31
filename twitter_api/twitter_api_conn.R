#args <- commandArgs(TRUE)
#host <- args[1]
#dbname <- args[2]
#startdate <- args[3]
#enddate <-args[4]

install.packages("twitteR", repos="http://cran.us.r-project.org")
library(twitteR)

setup_twitter_oauth("vDvkQVU0dXwavBsG52iRzOdJf", "19Efz69y4XgRM6bknP1lYMfXHC2XsrFxOQAh5q93Gjp3zlOOt0","20526198-6yOYuyG93GPboZsbOgBGhO3O5HQu4V10oJtI4NXRr", "6ODtCPwNXytR5R65bP9aBeWMzYNnmeDfpfPwKuuvCduxr")

#tweets <- searchTwitter("DCF", since="2017-03-01", until="2017-03-31", n=1000, geocode="51.4850510,-3.1658380,1000mi")
