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

data "spotify_track" "Adrenaline" {
    url = "https://open.spotify.com/track/6LfGXTFCLMNh4WUBxW8LSS?si=310e8dd20c834d9e"
}