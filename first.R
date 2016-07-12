library(httr)

oauth_endpoints("linkedin")

app <- oauth_app("linkedin",
                   key = "788d7pvpne58ny",
                   secret = "XMTmGyTUCo7Ydnu1")



tkn <- oauth2.0_token(oauth_endpoints("linkedin"),
                      app = app,
                      cache = TRUE)

