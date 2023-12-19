gcc -o client client.c // собираем клиент

gcc -o server server.c -lpthread // собираем сервер

gcc -o client client.c && gcc -o server server.c -lpthread && clear // собираем клиент и сервер

fuser -k 8000/tcp && fuser -k 8001/tcp && fuser -k 8002/tcp // чистим порты

./server --port 8000 --tnum 2 & ./server --port 8001 --tnum 2 & ./server --port 8002 --tnum 2
// запускаем сервера (можно и отдельно в разных терминалах, но это долго)

rm -rf ./server && rm -rf ./client // удаляем собранные файлы

./client --k 10 --mod 11 --servers ./server_list.txt // запускаем клиент
