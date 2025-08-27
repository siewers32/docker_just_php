# Docker setup webapplication
## Installatie Docker voor Windows:
Docker maakt gebruik van Linux. In Windows 11 kun je gebruik maken van [Windows Subsysteem voor Linux](https://learn.microsoft.com/nl-nl/windows/wsl/about). Hiermee kun je naast windows ook gebruik maken van Linux. Docker kan samenwerken met WSL. Om Docker te installeren moet je dus eerst WSL(2) installeren.

* [Installatie windows op docker.com](https://docs.docker.com/desktop/setup/install/windows-install/)
* [Installeer Docker voor WSL2-backend](https://learn.microsoft.com/en-us/windows/wsl/install)

## Installatie Docker voor Mac:
Het macintosh besturingssysteem is gebaseerd op Unix (FreeBSD). Docker kan hierop draaien. Je kunt dus direct aan de slag met het installeren van Docker Desktop.

## Gebruik maken van Docker images en het draaien van containers.
In deze github-respository vind je de installatiescripts voor 3 images.
* Drie images worden gedownload
    * PHPMyAdmin (beheer database server)
    * MariaDB server (database server)
    * Ubuntu Server (web- en applicatieserver)

#### Docker
Om de containers te bouwen en te configureren met de benodigde componenten worden er 2 bestanden gebruikt:
* Dockerfile
* docker-compose.yml

#### Dockerfile
De dockerfile bevat de instructies die nodig zijn om een bestaand image (php:8.x)te installeren.

#### De docker-compose.yml
Dit bestand bevat de instructies om een map te delen met het host systeem (html)

## Installatie image en containers.
* Voer onderstaande commando's uit in een terminal (bijv. powershell)
* Hiermee worden de benodigde images gedownload en geconfigureerd en de containers worden opgestart.

```
docker run --rm -it -p 8000:8000 -v ./html:/html just_php php -S 0.0.0.0:8000
docker run -it --rm --name just_php_app just_php bash
docker build -t just_php .       
```


## Check of alles het doet
* Open een webbrowser en ga naar `http://127.0.0.1`
* Klik op de link om naar `http://127.0.0.1:8080` te gaan. Kijk of je kunt inloggen in PHPMyAdmin met gebruikersnaam en wachtwoord zoals je hebt ingesteld.

