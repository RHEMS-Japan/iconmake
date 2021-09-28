# iconmaker

### description
iconmaker can easly create image for icon

・it will resize the image.
・it will add corner tag.


| org image     | convert image     |
|------------|-------------|
| <img src="https://github.com/RHEMS-Japan/iconmaker/blob/master/workdir/RHEMS.png?raw=true)" width="250"> | <img src="https://github.com/RHEMS-Japan/iconmaker/blob/master/workdir/tmp/RHEMS-iconmaker.png?raw=true)" width="250"> |




### docker-hub

https://hub.docker.com/repository/docker/rhemsjapan/iconmaker


```sh
docker run --rm -d -v $(PWD):/root/tmp-dir --env TAG=PRD --env IMG=RHEMS.png rhemsjapan/iconmaker:latest
```
