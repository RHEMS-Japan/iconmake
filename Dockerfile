From dpokidov/imagemagick:develop

#RUN convert -version
WORKDIR /root

COPY red-corner.png ./
COPY blue-corner.png ./
COPY rhems-corner.png ./
COPY omaner.ttf ./
COPY run.sh ./
RUN chmod +x ./run.sh

#ENTRYPOINT ["/bin/sh", "-c", "while :; do sleep 10; done"]
ENTRYPOINT ["./run.sh"]
#CMD ["./run.sh"]
