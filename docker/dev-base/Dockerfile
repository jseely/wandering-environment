FROM ubuntu
MAINTAINER Justin Seely

RUN apt-get update

RUN apt-get -y install git
RUN apt-get -y install wget

RUN apt-get -y install zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
RUN wget -O /root/.zshrc https://raw.githubusercontent.com/jseely/wandering-environment/master/configs/.zshrc
RUN chsh -s $(which zsh)

RUN apt-get -y install vim

WORKDIR /root
CMD ["zsh"]
