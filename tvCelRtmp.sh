#!/bin/bash
log_file="./Logs/tvCel.txt"
inputStream="tvCelLoop.mp4"
outputStream="rtmp://127.0.0.1:1935/live/tvcel?pkt_size=1316"
streamName="TV Cel"

function tvCel (){
        ffmpeg  -stream_loop -1 -re -i "$inputStream" \
        -c:v libx264 \
        -c:a aac \
        -mpegts_original_network_id 1 \
        -mpegts_transport_stream_id 1 \
        -mpegts_service_id 1 \
        -mpegts_pmt_start_pid 4096 \
        -streamid 0:289 \
        -streamid 1:337 \
        -metadata service_provider="SPEEDCAST" \
        -metadata service_name="$streamName" \
        -mpegts_service_type 0x11 \
        -f flv "$outputStream" >> "$log_file" 2> >(while read line; do echo "[$(date +'%Y-%m-%d %H:%M:%S')] $line"; done)
}
tvCel