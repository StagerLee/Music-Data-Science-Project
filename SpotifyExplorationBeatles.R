#FO2D: Test Spotify API

library(spotifyr)

Sys.setenv(SPOTIFY_CLIENT_ID = '4ad8e6ae5a9e45efacbc2cf00b82b2dc')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '0a173a2dcd41415b8266fcb27fecb6fe')

get_spotify_access_token()

library(tidyverse)
library(knitr)

FO2D.test <- get_artist_audio_features('the Beatles')
FO2D.test %>% 
  count(key_mode, sort = TRUE) %>% 
  head(5) %>% 
  kable()
