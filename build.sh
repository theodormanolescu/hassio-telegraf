set -ev
docker run --rm --privileged \
        -v ~/.docker:/root/.docker \
	-v "$(pwd)":/data \
	homeassistant/amd64-builder \
	-t telegraf \
	--git \
	--all \
	--test \
	--image "sabuto/{arch}-hassio-telegraf"
