library(spotifyr)
library(tidyverse)
library(knitr)
library(ggjoy)
library(ggplot2)

Sys.setenv(SPOTIFY_CLIENT_ID = '4ad8e6ae5a9e45efacbc2cf00b82b2dc')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '0a173a2dcd41415b8266fcb27fecb6fe')

access <- get_spotify_access_token()

BeatlesF <- get_artist_audio_features('the beatles')

BeatlesF %>% 
  arrange(-valence) %>% 
  select(track_name, valence) %>% 
  head(5) %>% 
  kable()


ggplot(BeatlesF, aes(x = valence, y = album_name)) + 
  geom_joy() + 
  theme_joy() +
  ggtitle('Plot: happiness distribution from the Beatles album', subtitle = "Based on valence from audio features")