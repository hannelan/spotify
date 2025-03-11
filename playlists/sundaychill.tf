################
### Playlist ###
################

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
    data.spotify_track.Aloha.id,
  ]
}

#############
### Songs ###
#############

data "spotify_track" "Ladybug" {
    url = "https://open.spotify.com/track/2VWs3tTCpvPIPwwgpG68Gj?si=37a19ad977ab4a0d"
}

data "spotify_track" "Ilikethewayyoukissme" {
    url = "https://open.spotify.com/track/2GxrNKugF82CnoRFbQfzPf?si=19f8b3f4f2e546cd"
}