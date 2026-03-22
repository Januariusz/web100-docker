# Obraz bazowy
FROM ubuntu:latest

LABEL maintainer="Jakub Janusz s99553@pollub.edu.pl"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html

# Port
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

#Połączyłem komendy apt-get update, upgrade i install za pomocą && żeby były w jednej warstwie

#Czyszczenie cache (rm -rf /var/lib/apt/lists/*) - mniejszy rozmiar końcowy

#Parametr --no-install-recommends- żeby nie instalować zbeðnych rzeczy- mniejszy obraz
#Użycie LABEL zamiast MAINTAINER-  bo label jest nowszym standardem
