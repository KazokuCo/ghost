FROM ghost:0.10.1
RUN npm install -q --no-color ghost-s3-storage pg && npm cache clean
RUN chown -R user content
ADD config.js config.js
