FROM ghost:0.10
RUN npm install -q --no-color ghost-s3-storage pg
RUN chown -R user content
ADD config.js config.js
