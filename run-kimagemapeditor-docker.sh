xhost +
# --rm will remove the container as soon as it ends
docker run --rm --name="kimagemapeditor" \
	-i -t \
	-v ${HOME}:/home/${USER} \
	-v /d/opt/ImageMaps:/opt/ImageMaps \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=192.168.99.1:0.0 \
	mesquita/kimagemapeditor:last "/usr/bin/kimagemapeditor"
xhost -
