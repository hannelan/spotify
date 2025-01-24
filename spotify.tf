terraform {
  required_providers {
    spotify = {
      source  = "conradludgate/spotify"
      version = "~> 0.2.7"
    }
  }
}

resource "spotify_playlist" "Fortytwo_Party_Extravaganza" {
  name        = "42 Fortytwo Party Extravaganza"
  description = "The best party playlist in the galaxy"
  public      = true

  tracks = flatten([
    data.spotify_track.Can_I_Kick_It.id,
    data.spotify_track.Oooh.id
  ])
}

data "spotify_track" "Can_I_Kick_It" {
  url = "https://open.spotify.com/track/3Ti0GdlrotgwsAVBBugv0I?si=ea74d5fb0434498f"
}

data "spotify_track" "Oooh" {
  url = "https://open.spotify.com/track/5ZALuEs0BuWHbLpctEQaXI?si=d6b30e88dac24043"
}

provider "spotify" {
  api_key = var.spotify_api_key
}

