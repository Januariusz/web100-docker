Połączyłem komendy apt-get update, upgrade i install za pomocą && żeby były w jednej warstwie

Czyszczenie cache (rm -rf /var/lib/apt/lists/*) - mniejszy rozmiar końcowy

Parametr --no-install-recommends- żeby nie instalować zbeðnych rzeczy- mniejszy obraz

Użycie LABEL zamiast MAINTAINER-  bo label jest nowszym standardem


[jakub@Jakub lab]$ sudo docker history web100
IMAGE          CREATED              CREATED BY                                      SIZE      COMMENT
8fd68cd6b44d   28 seconds ago       /bin/sh -c #(nop)  CMD ["apachectl" "-D" "FO…   0B        
c61bfcaa8356   28 seconds ago       /bin/sh -c #(nop)  EXPOSE 80                    0B        
52efee34e1bf   29 seconds ago       /bin/sh -c #(nop) COPY file:7a022298837f74bf…   4.1kB     
5bac81280b00   30 seconds ago       /bin/sh -c apt-get update && apt-get upgrade…   121MB     
15cd329fc33d   About a minute ago   /bin/sh -c #(nop)  LABEL maintainer=Jakub Ja…   0B        
186072bba1b2   3 weeks ago          /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B        
<missing>      3 weeks ago          /bin/sh -c #(nop) ADD file:3f78aa860931e0853…   85.7MB    
<missing>      3 weeks ago          /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B        
<missing>      3 weeks ago          /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B        
<missing>      3 weeks ago          /bin/sh -c #(nop)  ARG LAUNCHPAD_BUILD_ARCH     0B        
<missing>      3 weeks ago          /bin/sh -c #(nop)  ARG RELEASE                  0B 
