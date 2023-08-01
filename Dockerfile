FROM m0uray/slopy-trans
RUN wget https://ftp.mozilla.org/pub/firefox/releases/99.0b8/linux-x86_64/en-GB/firefox-99.0b8.tar.bz2
#https://ftp.mozilla.org/pub/firefox/releases/99.0b8/linux-x86_64/en-GB/firefox-99.0b8.tar.bz2
RUN tar xvf firefox-99.0b8.tar.bz2 -C /root/
VOLUME ["/etc/ssh"]
EXPOSE 3389 22 9001 993 7513 1984 1985 1022
CMD ["/bin/bash", "/root/startup.sh"]
