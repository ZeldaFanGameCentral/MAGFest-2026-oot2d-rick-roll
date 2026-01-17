#!/usr/bin/env bash
set -e

INPUT="$1"
OUTDIR="$2"

if [[ -z "$INPUT" || -z "$OUTDIR" ]]; then
  echo "Usage: $0 input.webm output_dir"
  exit 1
fi

mkdir -p "$OUTDIR"

ffmpeg -i "$INPUT" \
  -filter_complex "\
[0:a]\
dcshift=0,\
pan=mono|c0=0.5*c0+0.5*c1,\
highpass=60,\
lowpass=3300,\
equalizer=f=400:t=q:w=1:g=-1.5,\
equalizer=f=1200:t=q:w=1:g=1.2,\
equalizer=f=1800:t=q:w=1:g=1.8,\
equalizer=f=2500:t=q:w=1:g=-3.2,\
volume=3.0\
[aud]; \
anoisesrc=color=white:amplitude=0.0007 \
[noise]; \
[aud][noise]amix=inputs=2:weights=1 0.15:duration=shortest,\
alimiter=limit=0.86\
[out]" \
  -map "[out]" \
  -ac 1 \
  -ar 8000 \
  -c:a pcm_u8 \
  -f segment \
  -segment_time 3 \
  -reset_timestamps 1 \
  "$OUTDIR/never-gonna-give-you-up-%03d.wav"
