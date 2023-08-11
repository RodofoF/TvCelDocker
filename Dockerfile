FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get install -y libnginx-mod-rtmp && \
    apt install ffmpeg -y && \
    mkdir /var/www/html/stream && \
    mkdir /var/www/html/rtmp && \
    mkdir /home/tvcel &&\
    mkdir /home/tvcel/Logs &&\
    ln -s /etc/nginx/sites-available/rtmp /etc/nginx/sites-enabled/rtmp
COPY index.nginx-debian.html /var/www/html/index.nginx-debian.html
COPY nginx.conf /etc/nginx/nginx.conf
COPY tvCelUdp.sh /home/tvcel
COPY tvCelRtmp.sh /home/tvcel
COPY tvCelLoop.mp4 /home/tvcel
COPY pass.txt /etc/nginx/pass.txt
COPY rtmp /etc/nginx/sites-available/rtmp
RUN chmod +x /home/tvcel/tvCelRtmp.sh
RUN chmod +x /home/tvcel/tvCelUdp.sh
EXPOSE 80 443 1940 8090
CMD ["nginx", "-g", "daemon off;"]

