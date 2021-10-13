From dpokidov/imagemagick:latest

#RUN convert -version
WORKDIR /root

COPY seal/* ./
COPY omaner.ttf ./
COPY run.sh ./
RUN chmod +x ./run.sh

#ENTRYPOINT ["/bin/sh", "-c", "while :; do sleep 10; done"]
ENTRYPOINT ["./run.sh"]
#CMD ["./run.sh"]
