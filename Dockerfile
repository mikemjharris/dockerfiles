FROM node:10

RUN apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	--no-install-recommends \
	&& curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
	&& echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
	&& apt-get update && apt-get install -y \
	google-chrome-stable \
	fontconfig \
	fonts-ipafont-gothic \
	fonts-wqy-zenhei \
	fonts-thai-tlwg \
	fonts-kacst \
	fonts-symbola \
	fonts-noto \
	ttf-freefont 

# Add Chrome as a user
#RUN groupadd -r chrome && useradd -r -g chrome -G audio,video chrome \
#    && mkdir -p /home/chrome && chown -R chrome:chrome /home/chrome \
#		&& mkdir -p /opt/google/chrome && chown -R chrome:chrome /opt/google/chrome

WORKDIR /home/chrome

RUN npm install -g lighthouse