# appdaemon-docker
Docker for HASS AppDaemon on Raspberrypi-2

Docker is built from the same python 3.6 source image as the official HASS docker to minimze the space this container will consume on your system.

The /conf container directory should be mapped to a local directory containing your apps folder and the appdaemon.cfg file.  More info on configuring appdaemon can be found at it's repo: https://github.com/acockburn/appdaemon
