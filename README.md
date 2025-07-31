# cryptopro-nginx-astra
Сборка докер образа на базе Astra Linux (поддержка 1.7, 1.8)
Nginx из поставики CryptoPro 5.x версии. Сертифицированной ФСТЭК. 

За основу взято: https://support.cryptopro.ru/index.php?/Knowledgebase/Article/View/440/0/nginx-gost-binary-packages


Создавайте ключи без паролей!

Информация о сертификатах
/opt/cprocsp/bin/amd64/certmgr -list

Установка корневых и промежуточных сертификатов
/opt/cprocsp/bin/amd64/certmgr -inst -store uRoot -file /path/to/root.cer
/opt/cprocsp/bin/amd64/certmgr -inst -store uCa -file /path/to/intermediate.cer

Создание сертификата на тестовом УЦ КриптоПро
/opt/cprocsp/bin/amd64/cryptcp -creatcert -provtype 80 -rdn "CN=example.com" -cont '\\.\HDIMAGE\srv' -certusage 1.3.6.1.5.5.7.3.1 -ku -du -both -exprt -ca http://testgost2012.cryptopro.ru/certsrv/

где заменить домен example.com надо на ваш. 

Посмотреть информацию об установленных сертификатах и времени их действия:

/opt/cprocsp/bin/amd64/certs_info
