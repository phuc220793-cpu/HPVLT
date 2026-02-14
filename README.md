🌹 A Sweet Valentine's Day Surprise! 💌

Hey there,

Are you ready to add a little love to your GitHub projects? I've got just the thing for you! 💖

I've created a special project for Valentine's Day that's sure to spread some joy to users around the globe. It's a simple yet charming web page designed to celebrate love and affection in a fun and interactive way.

Inside this repository, you'll find all the code you need to create your own Valentine's Day message. Just clone the repo, customize the message to suit your style, and share it with your loved ones, friends, or even your crush! Whether you're asking someone to be your Valentine or just spreading a little love, this project is sure to make hearts flutter.

So go ahead, fork this repo, and let your creativity shine! Share the love with the world and make this Valentine's Day one to remember.

Wishing you a day filled with love, laughter, and lots of GitHub stars. ⭐️

With love,
[Raw.9k]

---

## Replace the music/video

1. Create a folder named `assets` next to `index.html`.
2. Put your own media file there (example: `valentine.mp4` or `song.m4a`).
3. Open `index.html` and update this line in `playSong()`:

- `var mediaUrl = 'assets/valentine.mp4';`

Notes:
- Use media you have rights to.
- If you host with GitHub Pages, keeping the file inside the repo (like `assets/valentine.mp4`) is usually more reliable than linking to `github.com/.../raw/...`.

## Replace the GIF with your own image

1. Put your image into `assets/` (examples: `valentine-image.jpg`, `valentine-image.png`).
2. In `index.html`, find the `<img ...>` inside `.gif-container` and set:
	- `src="assets/valentine-image.jpg"` to your real filename.

Tip:
- The HTML is set to fall back to the original GIF if your local image filename is wrong or missing.

### Get (extract) music from a video you already have

If you have a video file like `assets/valentine.mp4` and you want **only the music**:

1. Install FFmpeg (one-time):
	 - Option A (Winget): `winget install Gyan.FFmpeg`
	 - Option B: download from https://ffmpeg.org and add `ffmpeg` to your PATH

2. Extract audio to `assets/song.m4a`:

- AAC/M4A (small, good quality):
	- `ffmpeg -i assets/valentine.mp4 -vn -c:a aac -b:a 192k assets/song.m4a`
- MP3 (compatible everywhere):
	- `ffmpeg -i assets/valentine.mp4 -vn -c:a libmp3lame -b:a 192k assets/song.mp3`

3. In `index.html`, the button already tries to play `assets/song.m4a` first, then falls back to the video audio track.
