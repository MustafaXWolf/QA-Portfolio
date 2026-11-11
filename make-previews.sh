#!/usr/bin/env bash
# Run from the folder that contains Project1, Project2, Project3 ...
# 1) needs ffmpeg:  sudo apt install ffmpeg
# 2) creates an animated .webp next to every .mp4 (the .mp4 files are kept)
# 3) replaces every <video> tag in the .md files with an inline animated image
set -e
for v in Project*/videos/*.mp4; do
  out="${v%.mp4}.webp"
  [ -f "$out" ] || ffmpeg -v error -y -i "$v" -vf "fps=8,scale=800:-1:flags=lanczos" -loop 0 -q:v 50 "$out"
done
for md in Project*/*.md; do
  perl -0pi -e 's#<video[^>]*src="(videos/([^"]+)\.mp4)"[^>]*></video>#![Screen recording: $2](videos/$2.webp)\n\n[Full-quality MP4]($1)#g' "$md"
done
echo "Done. Check the pages on GitHub after you push."
