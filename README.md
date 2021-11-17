# iconmaker

### description
iconmaker can easly create image for icon.
it will resize the image and add seal tag.


| org image     | convert image     |
|------------|-------------|
| <img src="https://github.com/RHEMS-Japan/iconmaker/blob/master/workdir/RHEMS.png?raw=true)" width="250"> | <img src="https://github.com/RHEMS-Japan/iconmaker/blob/master/workdir/tmp/RHEMS-iconmaker.png?raw=true)" width="128"> |


You can select the type of seal from the following.

|red-corner | blue-corner |yellow-corner |rhems-bar |
|------------|-------------|------------|-------------|
|<img src="https://github.com/RHEMS-Japan/iconmaker/blob/master/seal/red-corner.png?raw=true)" width="128">|<img src="https://github.com/RHEMS-Japan/iconmaker/blob/master/seal/blue-corner.png?raw=true)" width="128">|<img src="https://github.com/RHEMS-Japan/iconmaker/blob/master/seal/yellow-corner.png?raw=true)" width="128">|<img src="https://github.com/RHEMS-Japan/iconmaker/blob/master/seal/rhems-bar.png?raw=true)" width="128">

#### wath do you need?
docker

pll the image
```
docker pull rhemsjapan/iconmaker:latest
```

#### tips
make your original image with square in current directory


### installer
(in preparation)
```terminal
[terminal]# curl https://****/install.sh | bash
```


### how to use

```Usage
Usage: iconmaker [OPTION]...
  -h            Display help
  -i VALUE      Select image
  -t VALUE      Put text to annotate
```

#### example
```terminal
[terminal]# iconmaker -i RHEMS.png -t RPD
```

### docker-hub

https://hub.docker.com/repository/docker/rhemsjapan/iconmaker

<br><br><br>
### run

```sh
docker run --rm -v ${_TMP}:/root/tmp-dir --env TAG=$t --env IMG=$i --env SLN=$s.png rhemsjapan/iconmaker:latest
```
