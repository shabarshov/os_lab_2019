./udpserver --bufsize 100 --port 5000 & ./udpclient --bufsize 100 --ip 0.0.0.0 --port 5000  
// запускаем upd и клиент и сервер

./tcpserver --bufsize 100 --port 5050 & ./tcpclient --bufsize 100 --ip 0.0.0.0 --port 5050
// запускаем tcp и клиент и сервер
