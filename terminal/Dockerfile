# Initial inspiration from https://github.com/justinribeiro/dockerfiles/blob/master/lighthouse/Dockerfile 
# docker run --rm --name lighthouse -i -v ~/lighthouse/blog:/home/chrome lighthouse lighthouse --chrome-flags="--headless --no-sandbox" https://www.mikemjharris.com --output-path="report-`date +\%Y-\%m-\%d`.html" 


FROM node:10
LABEL name="lighthouse" \
      maintainer="mikemjharris hello@mikemjharris.com" 

RUN apt-get update && apt-get install -y \
  git-all \
  curl

ARG CACHEBUST=1
RUN git clone git@github.com:mikemjharris/config.git

# Drop to cli
CMD ["/bin/bash"]
