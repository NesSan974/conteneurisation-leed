export $(cat .env)

curl -F root=http%3A%2F%2Flocalhost%3A${WEB_PORT}\
    -F mysqlHost=bdd\
    -F mysqlLogin=root\
    -F mysqlMdp=${MYSQL_ROOT_PASSWORD}\
    -F mysqlBase=${MYSQL_DATABASE}\
    -F mysqlPrefix=leed__\
    -F login=${LEED_ROOT_USER}\
    -F password=${LEED_ROOT_PASSWORD}\
    -F installButton=\
    -X POST http://localhost:${WEB_PORT}/install.php


mv "parametrageLeed.sh" "[used]parametrageLeed.sh"
