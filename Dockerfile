FROM ghost:0.10.1
RUN cd $GHOST_SOURCE && npm install -q --no-color ghost-s3-storage pg && npm cache clean
RUN chown -R user content
ADD config.js $GHOST_CONTENT/config.js
