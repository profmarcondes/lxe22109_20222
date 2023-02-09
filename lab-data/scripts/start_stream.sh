#!/bin/sh

cvlc v4l2:///dev/video0 -vvv --v4l2-width=320 --v4l2-height=240 \
     --drop-late-frames --skip-frames --no-sout-audio \
     --sout '#transcode{vcodec="mpeg4",vb="2470",scodec=none}:standard{mux="ps",access="http",dst=":8080"}'
