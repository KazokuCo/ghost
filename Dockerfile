FROM ghost:0.9
RUN cd $GHOST_SOURCE && npm install -q --no-color ghost-s3-storage pg && npm cache clean
RUN mkdir -p content/storage/s3 && echo "module.exports = require('ghost-s3-storage');" > content/storage/s3/index.js
RUN chown -R user .
ADD config.js $GHOST_CONTENT/config.js
