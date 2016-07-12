library(httr)
library(plyr)
library(dplyr)
#authorize
oauth_endpoints("linkedin")

app <- oauth_app("linkedin",
                   key = "788d7pvpne58ny",
                   secret = "XMTmGyTUCo7Ydnu1")



tkn <- oauth2.0_token(oauth_endpoints("linkedin"),
                      app = app,
                      cache = TRUE)
#test
me <- GET("https://api.linkedin.com/v1/people/~:(id,num-connections,picture-url)?format=json",
              config(token = tkn))

stop_for_status(me)

content(me)

m  <- content(me, as = "text") %>%
  jsonlite::fromJSON(flatten = TRUE, simplifyDataFrame = TRUE) 

me_dt <- data.frame(m)

View(me_dt)



