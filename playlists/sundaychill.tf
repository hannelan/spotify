####################
### Playlist ###
####################

resource "spotify_playlist" "sundaychill" {
  name = "Sunday Chill"
  description = "Music for a relaxing Sunday - Powered by Terraform"
  public = true
  
  tracks = [
    data.spotify_track.Asleep.id,
    data.spotify_track.Unnskyld.id,
    data.spotify_track.Skisse2.id,
    data.spotify_track.Binz.id,
    data.spotify_track.Intermezzo.id,
  ]
}

#############
### Songs ###
#############

data "spotify_track" "Asleep" {
    url = "https://open.spotify.com/track/7vXEZPq2qVF0Skw2OukbLG?si=a9657280200246e7"
}

data "spotify_track" "Unnskyld" {
    url = "https://open.spotify.com/track/3ZZNUQxQUdGGazPJdFBD9J?si=92b950062e7a49d0"
}

data "spotify_track" "Skisse2" {
    url = "https://open.spotify.com/track/0GGSVJIOyphhQGJO7RaPsE?si=11a2dfb79254497c"
}

data "spotify_track" "Binz" {
    url = "https://open.spotify.com/track/7yvdp8dqmxExSJwT2fn6Xq?si=8021d6feb24c42a5"
}

data "spotify_track" "Intermezzo" {
    url = "https://open.spotify.com/track/38NSNlJnwRoYOM2P4haMx4?si=928b55aa48ed42cf"
}