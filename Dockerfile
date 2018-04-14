FROM base/devel:latest

RUN pacman -Syuu
RUN pacman -S --noconfirm git vim ruby
ENV PATH=$PATH:/root/.gem/ruby/2.5.0/bin
RUN echo PATH : $PATH
RUN gem install --no-rdoc --no-ri bundler 
RUN gem install --no-rdoc --no-ri rails refinerycms
