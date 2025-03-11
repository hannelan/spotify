# Spotify

1. Create an app in Spotify developer portal.
2. Set the redirect url to `http://127.0.0.1:8080/callback`
3. Modify this url to contain your client_id you got from Spotify, and visit the url:
https://accounts.spotify.com/authorize?response_type=code&client_id=CLIENT_ID&scope=playlist-modify-private%20playlist-modify-public&redirect_uri=http%3A%2F%2F127.0.0.1:8080%2Fcallback&state=blablabla

4. After you apporved the app you're gonna be redirected back to http://127.0.0.1:8080, the browser will give you a 404, but that's ok!
    The part your after is in the URL, so just check the url and copy the code part in it.

5. Generate a base64 out of your client_id and client_secret, `client_id:client_secret` (remember the `:` between them)

6. Modify the command below with the CODE from step 4, and the base64 from step 5.  Then run it.
curl -X POST "https://accounts.spotify.com/api/token" \
     -H "Content-Type: application/x-www-form-urlencoded" \
     -H "Authorization: Basic <BASE64 OF 'CLIENT_ID:CLIENT_SECRET'>" \
     -d "grant_type=authorization_code" \
     -d "code=CODE_FROM_REQUEST_ABOVE" \
     -d "redirect_uri=http://127.0.0.1:8080/callback"

7. You should receive back a json response, inside this there is a `refresh_token`, copy that.

8. Add the following secrets to GitHub.
    `SPOTIFY_CLIENT_ID`, `SPOTIFY_CLIENT_SECRET` and `SPOTIFY_REFRESH_TOKEN` and populate them with the correct data.

9. You should be good to go now.