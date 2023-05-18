#touch /config/success
useradd user -b /home -m -p $(openssl passwd -6 asdf) -s /bin/bash

crontab -r
