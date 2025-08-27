# Docker setup just php development
## Installatie Docker voor Windows:
Docker maakt gebruik van Linux. In Windows 11 kun je gebruik maken van [Windows Subsysteem voor Linux](https://learn.microsoft.com/nl-nl/windows/wsl/about). Hiermee kun je naast windows ook gebruik maken van Linux. Docker kan samenwerken met WSL. Om Docker te installeren moet je dus eerst WSL(2) installeren. (dit maakt overigens als onderdeel uit van de installatie van Docker Desktop)

* [Installatie windows op docker.com](https://docs.docker.com/desktop/setup/install/windows-install/)
* [Installeer Docker voor WSL2-backend](https://learn.microsoft.com/en-us/windows/wsl/install)

## Installatie Docker voor Mac:
Het macintosh besturingssysteem is gebaseerd op Unix (FreeBSD). Docker kan hierop draaien. Je kunt dus direct aan de slag met het installeren van Docker Desktop.

## Gebruik maken van Docker images en het draaien van containers.
In deze github-respository vind je de installatiescripts voor 1 image:
* PHP 8.x-cli

#### Dockerfile
* Om de container te bouwen en te configureren wordt het bestand Dockerfile gebruikt
* De dockerfile bevat de instructies die nodig zijn om een bestaand image (php:8.x)te installeren.

## Installatie image en containers.
* Voer onderstaande commando's uit in een terminal (bijv. powershell)
* Hiermee worden de benodigde images gedownload en geconfigureerd en de containers worden opgestart.

```shell
# Maak de image op basis van de Dockerfile
docker build -t just_php .       
# Maak gebruik van de built-in webserver van PHP
docker run --rm -it -p 8000:8000 -v ./html:/html just_php php -S 0.0.0.0:8000
# Ga naar http://127.0.0.1 om te controleren of de built-in webserver draait.
# Of
# Maak gebruik van php-cli om php-bestanden vanaf de commandline te starten
docker run -it --rm --name just_php_app just_php bash
# Als bash is opgestart kun je vervolgens verder met
php cli.php # test om te zien of je php bestanden in interactieve modus kunt gebruiken.
```

