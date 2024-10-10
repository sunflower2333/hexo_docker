## This Dockerfile help you create a new hexo envrionment with fluid theme.
# Hexo data will be Saved in ./docs/
#
# To build:
#   docker build -t 'hexo_fluid:1.0' -f Dockerfile ./
#
# To run:
#   docker run -it --name="my_hexo" -p 4000:4000 -v $HOME/.ssh:/root/.ssh -v $PWD/docs:/Hexo hexo_fluid:1.0
#
# To enter shell:
#   docker exec -it my_hexo /bin/bash


# Base Image
FROM node:latest

# Persist Data
WORKDIR /Hexo
VOLUME /Hexo

# Expose server port
EXPOSE 4000

# Install hexo
RUN npm install -g npm && \
    npm install -g hexo-cli

# Install hexo fluid theme
CMD if [ ! "$(ls -A /Hexo/)" ]; then \
        hexo init /Hexo; \
    fi && \
    if [ ! -f "FluidInstalled" ]; then \
        npm install --save hexo-theme-fluid; \
        sed -i 's/theme\:\ landscape/theme\:\ fluid/g' $PWD/_config.yml; \
        ln -s ./node_modules/hexo-theme-fluid/_config.yml ./_config.fluid.yml; \
        npm install hexo-server --save; \
        touch $PWD/FluidInstalled; \
    fi && \
    hexo server
