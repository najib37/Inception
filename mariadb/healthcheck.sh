
#!/bin/bash

export DBROOTPASS="r1234" WP_USER="najib" WP_PASS="1234"
mariadb-admin -uroot -p"$DBROOTPASS" ping
